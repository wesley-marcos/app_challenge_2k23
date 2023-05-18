import 'package:url_launcher/url_launcher.dart';
import 'package:map_launcher/map_launcher.dart';

void openGoogleMaps() async {
  final availableMaps = await MapLauncher.installedMaps;

  if (availableMaps.isNotEmpty) {
    await availableMaps.first.showMarker(
      coords: Coords(-22.257138367172807, -45.69636010309678),
      title: "Localização",
    );
  } else {
    throw 'Could not launch Google Maps';
  }
}
