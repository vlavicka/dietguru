package net.cantooce.dietguru.gui;

import java.awt.*;
import java.awt.event.*;

public class guitest extends Frame {
    Button button1;

    public guitest() {
        super.setTitle("Regimen log dialog - test");
        this.setLayout(new FlowLayout());
        button1 = new Button("Hello");
        this.add(button1);
        this.setSize(300, 200);

        button1.addActionListener(new RegimenLogDialogBT());

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                System.exit(1);
            }
        });
    }

    class RegimenLogDialogBT implements ActionListener {
        public void actionPerformed(ActionEvent e) {
            //RegimenLogDialog nd = new RegimenLogDialog(this, true);
            //nd.show();
            ;
        }
    }

    public static void main(String[] args) {
        guitest obj = new guitest();
        obj.setVisible(true);
        RegimenLogDialog nd = new RegimenLogDialog(obj, true);
        nd.show();
    }
}
