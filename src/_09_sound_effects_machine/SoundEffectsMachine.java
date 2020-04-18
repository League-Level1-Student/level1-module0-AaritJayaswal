package _09_sound_effects_machine;

import java.applet.AudioClip;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JApplet;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;




public class SoundEffectsMachine implements ActionListener {
	JButton one = new JButton();
	JButton two = new JButton();
	JButton three = new JButton();
	public void run() {
		JFrame frame = new JFrame();
		frame.setVisible(true);
		
		JPanel panel = new JPanel();
		
				
		panel.add(one);
		one.addActionListener(this);
		one.setText("Chicken");
		
		panel.add(two);
		two.addActionListener(this);
		two.setText("Cow");
		
		panel.add(three);
		three.addActionListener(this);
		three.setText("Pig");
		
		frame.add(panel);
		frame.pack();
		
		
		
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource()==one) {
			
			playSound("chicken.wav");
		}
	
		else if (arg0.getSource()==two) {
			
			playSound("cow.wav");
		}
		
		else {
			
			playSound("pig.wav");
			
		}
		
	}


private void playSound(String fileName) {
    AudioClip sound = JApplet.newAudioClip(getClass().getResource(fileName)); 
    sound.play();
}
}


