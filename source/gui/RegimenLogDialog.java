package net.cantooce.dietguru.gui;

import java.awt.*;
import java.awt.event.*;

public class RegimenLogDialog extends Dialog implements ActionListener {
    TextField tf;

    public RegimenLogDialog(Frame owner, boolean modal) {
        super(owner, "New dialog", modal);
        this.setLayout(new FlowLayout());
        this.setSize(200, 100);
        this.setLocation(100, 100);
        tf = new TextField(5);
        this.add(tf);
        Button close = new Button("Close");
        close.addActionListener(this);
        this.add(close);
    }

    public void actionPerformed(ActionEvent e) {
        this.dispose();
    }
}
