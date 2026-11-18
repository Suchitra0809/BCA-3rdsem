import java.awt.Color; 
import java.awt.Font; 
import java.awt.Graphics; 
import javax.swing.JFrame; 
import javax.swing.JPanel; 
 
// We change 'extends Applet' to 'extends JPanel' for modern Java windows 
public class PersonalInfo extends JPanel { 
 
    // This handles your visual drawings, text, and layout 
    @Override 
    protected void paintComponent(Graphics g) { 
        super.paintComponent(g); // Clears the background properly 
         
        // --- YOUR CUSTOM DRAWING CODE GOES HERE --- 
        // Setting up styling 
        g.setColor(Color.BLUE); 
        g.setFont(new Font("Arial", Font.BOLD, 18)); 
         
        // Displaying sample personal information strings 
        g.drawString("PERSONAL INFORMATION", 50, 50); 
         
        g.setColor(Color.BLACK); 
        g.setFont(new Font("Arial", Font.PLAIN, 14)); 
        g.drawString("Name: John Doe", 50, 100); 
        g.drawString("Course: Java Programming", 50, 130); 
        g.drawString("Status: Successfully Migrated from Applet!", 50, 160); 
          // ------------------------------------------ 
    } 
 
    // The essential 'main' entry point method that modern Java requires to execute 
    public static void main(String[] args) { 
        // Create the application window container 
        JFrame frame = new JFrame("Personal Information Window"); 
         
        // Create an instance of this layout panel class 
        PersonalInfo panel = new PersonalInfo(); 
         
        // Assemble the UI components 
        frame.add(panel); 
        frame.setSize(500, 400); // Sets window dimensions width=500, height=400 
        frame.setLocationRelativeTo(null); // Centers the window nicely on your screen 
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // Fully terminates program 
when closed 
        frame.setVisible(true); // Pops the window up onto the desktop 
    } 
} 
