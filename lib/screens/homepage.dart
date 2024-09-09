import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';
class HomePage extends StatefulWidget {
  final String userName;
  final String userId;

  const HomePage({required this.userName, required this.userId});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, ${widget.userName}'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/logo.png'), // Your logo
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.userName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    widget.userId,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            _buildExpandableMenu(
              'Orders',
              [
                _buildMenuItem(Icons.add, 'Create Order', () {
                  // Handle create order
                }),
                _buildMenuItem(Icons.track_changes, 'Track Orders', () {
                  // Handle track orders
                }),
              ],
            ),
            _buildExpandableMenu(
              'Invoices',
              [
                _buildMenuItem(Icons.picture_as_pdf, 'Generate Invoice', () {
                  // Handle generate invoice
                }),
                _buildMenuItem(Icons.visibility, 'View Invoices', () {
                  // Handle view invoices
                }),
              ],
            ),
            _buildExpandableMenu(
              'Sync & Backup',
              [
                _buildMenuItem(Icons.sync, 'Real-Time Sync', () {
                  // Handle real-time sync
                }),
                _buildMenuItem(Icons.cloud_upload, 'Cloud Backup', () {
                  // Handle cloud backup
                }),
              ],
            ),
            _buildExpandableMenu(
              'Settings',
              [
                _buildMenuItem(Icons.settings, 'App Preferences', () {
                  // Handle app preferences
                }),
                _buildMenuItem(Icons.print, 'Printing Options', () {
                  // Handle printing options
                }),
              ],
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Sign Out',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () async {
                await _signOut(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Dashboard!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget _buildExpandableMenu(String title, List<Widget> items) {
    return ExpansionTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      children: items,
      initiallyExpanded: false, // Change to true if you want it expanded by default
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } catch (e) {
      print('Sign out error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to sign out. Please try again.'),
        ),
      );
    }
  }
}
