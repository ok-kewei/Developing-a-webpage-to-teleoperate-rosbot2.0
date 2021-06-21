
 function init() {

    // Initialize the teleop.
    var teleop = new KEYBOARDTELEOP.Teleop({
      ros : ros,
      topic : '/cmd_vel'
    });

    // Add event listener for slider moves
    robotSpeedRange = document.getElementById("robot-speed");
    robotSpeedRange.oninput = function () {
        teleop.scale = robotSpeedRange.value / 100
    }

/*     // Create a UI slider using JQuery UI.
    $('#speed-slider').slider({
      range : 'min',
      min : 0,
      max : 100,
      value : 90,
      slide : function(event, ui) {
        // Change the speed label.
        $('#speed-label').html('Speed: ' + ui.value + '%');
        // Scale the speed.
        teleop.scale = (ui.value / 100.0);
      }
    });

    // Set the initial speed .
    $('#speed-label').html('Speed: ' + ($('#speed-slider').slider('value')) + '%');
    teleop.scale = ($('#speed-slider').slider('value') / 100.0); */
  }

    var ros = new ROSLIB.Ros({
      url: 'ws://localhost:9090'
      //url : "https://helloworldrobotics.s3.us-east-2.amazonaws.com/index.html"
    });


    ros.on('connection', function () {
      document.getElementById("status").innerHTML = "Connected";
    });

    ros.on('error', function (error) {
      document.getElementById("status").innerHTML = "Error";
    });

    ros.on('close', function () {
      document.getElementById("status").innerHTML = "Closed";
    });

    var txt_listener = new ROSLIB.Topic({
      ros: ros,
      name: '/txt_msg',
      messageType: 'std_msgs/String'
    });

    txt_listener.subscribe(function (m) {
      document.getElementById("msg").innerHTML = m.data;
      move(1, 0);
    });

    cmd_vel_listener = new ROSLIB.Topic({
      ros: ros,
      name: "/cmd_vel",
      messageType: 'geometry_msgs/Twist'
    });


      let topic = new ROSLIB.Topic({
        ros: this.ros,
        name: '/odom',
        messageType: 'nav_msgs/Odometry'
    })
    topic.subscribe((message) => {
        this.position = message.pose.pose.position
        console.log(message)
        document.getElementById("positionX").innerHTML = message.pose.pose.position.x;
        document.getElementById("positionY").innerHTML = message.pose.pose.position.y;
        document.getElementById("positionZ").innerHTML = message.pose.pose.position.z;
  })

    move = function (linear, angular) {
      var twist = new ROSLIB.Message({
        linear: {
          x: linear,
          y: 0,
          z: 0
        },
        angular: {
          x: 0,
          y: 0,
          z: angular
        }
      });
      cmd_vel_listener.publish(twist);
    }

    createJoystick = function () {
      var options = {
        zone: document.getElementById('zone_joystick'),
        threshold: 0.1,
        position: { left: 10 + '%' , top: 75 + 'px'},
        mode: 'static',
        size: 150,
        color: '#007af3',
      };
      manager = nipplejs.create(options);

      linear_speed = 0;
      angular_speed = 0;

      manager.on('start', function (event, nipple) {
        timer = setInterval(function () {
          move(linear_speed, angular_speed);
        }, 25);
      });

      manager.on('move', function (event, nipple) {
        max_linear = 5.0; // m/s
        max_angular = 2.0; // rad/s
        max_distance = 75.0; // pixels;
        linear_speed = Math.sin(nipple.angle.radian) * max_linear * nipple.distance/max_distance;
				angular_speed = -Math.cos(nipple.angle.radian) * max_angular * nipple.distance/max_distance;
      });

      manager.on('end', function () {
        if (timer) {
          clearInterval(timer);
        }
        self.move(0, 0);
      });
    }
    
    window.onload = function () {
      robot_IP = "localhost";
      //robot_IP = "https://helloworldrobotics.s3.us-east-2.amazonaws.com/index.html"

      // // Init handle for rosbridge_websocket
      ros = new ROSLIB.Ros({
          url: "ws://" + robot_IP + ":9090"
      });
      //position = { x: 0, y: 0, z: 0, },
/*       document.getElementById("menu_title").innerHTML = "hello~~";
      document.getElementById("position").innerHTML = [x= 0, y= 0, z= 0, ]; */

      //menu_title = 'Connection';
      video = document.getElementById('video');
      video.src = "http://" + robot_IP + ":8080/stream?topic=/camera/rgb/image_raw&type=mjpeg&quality=80";

      videoDepth = document.getElementById('videoDepth');
      videoDepth.src = "http://" + robot_IP + ":8080/stream?topic=/camera/depth/image_raw&type=mjpeg&quality=80";

      
      createJoystick();
      init();
      //initTeleopKeyboard();
    }