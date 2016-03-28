/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:button_left:898356:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  myPort.write(left_byte);
} //_CODE_:button_left:898356:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button_right:338123:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
  myPort.write(right_byte);
} //_CODE_:button_right:338123:

public void button1_click2(GButton source, GEvent event) { //_CODE_:button_clear:294850:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  textfield1.setText(" ");
} //_CODE_:button_clear:294850:

public void button2_click2(GButton source, GEvent event) { //_CODE_:button_stop:782228:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button_stop:782228:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:COM_list:833361:
  println("dropList1 - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:COM_list:833361:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button_connect:882005:
  println("button_connect - GButton >> GEvent." + event + " @ " + millis());
  
  check = true;
  myPort = new Serial(this, COM_list.getSelectedText(), 57600);
  serial_ID.setText("connected to: " + COM_list.getSelectedText());
  button_connect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  
} //_CODE_:button_connect:882005:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:319353:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield1:319353:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("GFE Reflow Oven data grapher");
  button_left = new GButton(this, 60, 390, 80, 50);
  button_left.setText("left");
  button_left.addEventHandler(this, "button1_click1");
  button_right = new GButton(this, 260, 390, 80, 50);
  button_right.setText("right");
  button_right.addEventHandler(this, "button2_click1");
  button_clear = new GButton(this, 460, 390, 80, 50);
  button_clear.setText("clear");
  button_clear.addEventHandler(this, "button1_click2");
  serial_ID = new GLabel(this, 450, 10, 300, 20);
  serial_ID.setText("not connected");
  serial_ID.setTextItalic();
  serial_ID.setOpaque(false);
  button_stop = new GButton(this, 660, 390, 80, 50);
  button_stop.setText("stop");
  button_stop.addEventHandler(this, "button2_click2");
  COM_list = new GDropList(this, 60, 10, 239, 80, 3);
  COM_list.setItems(loadStrings("list_833361"), 0);
  COM_list.addEventHandler(this, "dropList1_click1");
  button_connect = new GButton(this, 330, 10, 80, 50);
  button_connect.setText("connect");
  button_connect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button_connect.addEventHandler(this, "button3_click1");
  textfield1 = new GTextField(this, 450, 40, 300, 20, G4P.SCROLLBARS_NONE);
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
}

// Variable declarations 
// autogenerated do not edit
GButton button_left; 
GButton button_right; 
GButton button_clear; 
GLabel serial_ID; 
GButton button_stop; 
GDropList COM_list; 
GButton button_connect; 
GTextField textfield1; 