import javax.swing.JFrame; 
import java.awt.*; 
import java.awt.event.*; 
public class MouseEventExample extends JFrame implements MouseListener { 
String msg = ""; 
// Replacing init() with a constructor to setup the window 
public MouseEventExample() { 
setTitle("Mouse Event Example"); 
setSize(400, 200); // Original width and height from the applet tag 
setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
addMouseListener(this); 
setVisible(true); 
} 
public void mouseClicked(MouseEvent e) { 
msg = "Mouse Clicked"; 
repaint(); 
} 
 
public void mousePressed(MouseEvent e) { 
msg = "Mouse Pressed"; 
repaint(); 
} 
public void mouseReleased(MouseEvent e) { 
msg = "Mouse Released"; 
repaint(); 
} 
public void mouseEntered(MouseEvent e) { 
msg = "Mouse Entered"; 
repaint(); 
} 
public void mouseExited(MouseEvent e) { 
msg = "Mouse Exited"; 
repaint(); 
}
  @Override 
public void paint(Graphics g) { 
super.paint(g); // Ensures the window background clears properly 
g.setFont(new Font("Arial", Font.BOLD, 18)); 
g.drawString(msg, 100, 100); 
} 
// Standard main method required to run modern Java programs 
public static void main(String[] args) { 
new MouseEventExample(); 
} 
}
