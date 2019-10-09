
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author pratik
 */
public class EnterSymptoms extends javax.swing.JFrame {

    /**
     * Creates new form EnterSymptoms
     */
    public EnterSymptoms() {
        initComponents();
        try
        {
            Connection myConn=null;
            Statement stat=null,stat1=null;
            ResultSet rs=null;
            myConn=DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS_0049",Info.user,Info.pass);
            stat=myConn.createStatement();
            stat1=myConn.createStatement();
            String query0="Select count(*) from Staff where Availability='Yes';";
            rs=stat1.executeQuery(query0);
            int count=0;
            if(rs.next())
                count=rs.getInt(1);
            String query="Select concat(FirstName,' ',LastName),Id from Staff where Availability='Yes'";
            rs=stat.executeQuery(query);
            String doc[]=new String[count];
            int i=0;
            while(rs.next())
            {
                doc[i++]=rs.getString(1)+","+rs.getString(2);
                System.out.println(doc[i-1]);
            }
            availableDoctersCb.setModel(new javax.swing.DefaultComboBoxModel(doc));
            
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(rootPane, e.getMessage());
        }
    }
    String patientId;
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        symptomsTa = new javax.swing.JTextArea();
        jLabel4 = new javax.swing.JLabel();
        availableDoctersCb = new javax.swing.JComboBox<>();
        assignBtn = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Ubuntu", 1, 24)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Enter Symptoms");

        jLabel3.setText("Symptoms");

        symptomsTa.setColumns(20);
        symptomsTa.setRows(5);
        jScrollPane1.setViewportView(symptomsTa);

        jLabel4.setText("Available Doctors");

        availableDoctersCb.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        assignBtn.setText("Assign Doctor");
        assignBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                assignBtnActionPerformed(evt);
            }
        });

        jButton1.setText("Reset");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Home");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(18, 18, 18)
                        .addComponent(availableDoctersCb, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 255, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 380, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 153, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 142, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(assignBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(17, 17, 17)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(availableDoctersCb, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(40, 40, 40)
                .addComponent(assignBtn)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton2))
                .addContainerGap(30, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        // TODO add your handling code here:
        patientId=JOptionPane.showInputDialog("Enter Patient Id.");
        
    }//GEN-LAST:event_formWindowOpened

    private void assignBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_assignBtnActionPerformed
        // TODO add your handling code here:
        try
        {
            Connection myConn=null;
            Statement stat=null,stat1=null,stat2=null;
            ResultSet rs=null;
            myConn=DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS_0049",Info.user,Info.pass);
            stat=myConn.createStatement();
            stat1=myConn.createStatement();
            stat2=myConn.createStatement();
            //Get RecordId
            String query="Select count(*) from Record;";
            rs=stat.executeQuery(query);
            int recordCount=0;
            if(rs.next())
                recordCount=rs.getInt(1);
            recordCount++;
            String recordId="R"+recordCount;
            query="Insert into Record values('"+recordId+"','"+patientId+"',curdate(),null,'Undergoing')";
            stat.executeUpdate(query);
            String symptom=symptomsTa.getText();
            String[] symptoms=symptom.split(",");
            for(int i=0;i<symptoms.length;i++)
            {
                stat1.executeUpdate("Insert into Symptoms values('"+recordId+"','"+symptoms[i]+"')");
            }
            String doctorId=((String)availableDoctersCb.getSelectedItem()).split(",")[1];
            stat2.executeUpdate("Insert into RecordDoctor values('"+recordId+"','"+doctorId+"')");
            JOptionPane.showMessageDialog(rootPane,"Your RecordId is "+recordId+". You can now see the doctor.");
            this.dispose();
            new AdminHome().setVisible(true);
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(rootPane, e.getMessage());
        }
    }//GEN-LAST:event_assignBtnActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        symptomsTa.setText(null);
        try
        {
            Connection myConn=null;
            Statement stat=null,stat1=null;
            ResultSet rs=null;
            myConn=DriverManager.getConnection("jdbc:mysql://localhost:3306/HMS_0049",Info.user,Info.pass);
            stat=myConn.createStatement();
            stat1=myConn.createStatement();
            String query0="Select count(*) from Staff where Availability='Yes';";
            rs=stat1.executeQuery(query0);
            int count=0;
            if(rs.next())
                count=rs.getInt(1);
            String query="Select concat(FirstName,' ',LastName),Id from Staff where Availability='Yes'";
            rs=stat.executeQuery(query);
            String doc[]=new String[count];
            int i=0;
            while(rs.next())
            {
                doc[i++]=rs.getString(1)+","+rs.getString(2);
                System.out.println(doc[i-1]);
            }
            availableDoctersCb.setModel(new javax.swing.DefaultComboBoxModel(doc));
            
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(rootPane, e.getMessage());
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        this.dispose();
        new AdminHome().setVisible(true);
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(EnterSymptoms.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(EnterSymptoms.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(EnterSymptoms.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(EnterSymptoms.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new EnterSymptoms().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton assignBtn;
    private javax.swing.JComboBox<String> availableDoctersCb;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea symptomsTa;
    // End of variables declaration//GEN-END:variables
}