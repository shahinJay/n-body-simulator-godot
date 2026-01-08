# n-body-simulator-godot

# The simulation uses semi-implicit (symplectic) Euler integration for N-body gravitational behaviours in Godot

# Short Story
This little project started as a test playground for numerical integration, for a physics-based sandbox game I'm working on. 
The game required simplified realistic orbital physics. 
Since, Godot's built-in physics for RigidBody2D did not cut it (Orbits were highly unstable and would make bodies spiral in or get slingshot away from a central mass),  
I had to try different methods of integration. 
Using RK4 or Verlet for the force application for Rigidbody2D objects did not work, therefore I had to think about controlling and updating the positions of the bodies myself. 

Recently, I had discovered a better numerically stable integration approach that solves the orbital instabilities by updating the velocity of a body first instead of its position (Semi-implicit Euler)
(https://www.youtube.com/watch?v=nCg3aXn5F3M&list=LL&index=9&pp=gAQBiAQBsAgC), which made me create this test project. 
I tested the method out and it worked almost flawlessly. 
Orbits were now highly stable. 

# The simulator allows rapid experimentation with:
- N-body interactions
- Mass and velocity tuning
- Orbit stability (circular / elliptical)
- Real-time parameter visualization

![0108](https://github.com/user-attachments/assets/e511124a-51b1-4d8d-b1f8-218ea461b411)
