package _07_fortune_cookie;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JButton;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

public class FortuneCookie implements ActionListener {

	 public void showButton() {
		 JFrame frame = new JFrame();
		 frame.setVisible(true);
	 JButton button = new JButton();
	 frame.add(button);
	 frame.pack();
	 button.addActionListener(this);
	button.setText("Click me for a fortune!");
	 }

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		 int r = new Random().nextInt(5);
		 String s = null;
		 if (r == 0) {
			 s = "You will buy new plants";
		 }
		 else if (r == 1) {
			  s = "A pleasant surprise is waiting for you.";
		 }
		 else if (r == 2) {
			 s = "An inch of time is an inch of gold";
		 }
		 else if (r == 3) {
			 s = "All the troubles you have will pass away very quickly";
		 }
		 else if (r == 4) {
			  s = "Say hello to others. You will have a happier day";
		 }

		JOptionPane.showMessageDialog(null, s );
		 
 }
	}
	
