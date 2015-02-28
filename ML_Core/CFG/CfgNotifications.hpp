class CfgNotifications
{
    class Default
    {
        title = ""; // Tile displayed as text on black background. Filled by arguments.
        iconPicture = ""; // Small icon displayed in left part. Colored by "color", filled by arguments.
        iconText = ""; // Short text displayed over the icon. Colored by "color", filled by arguments.
        description = ""; // Brief description displayed as structured text. Colored by "color", filled by arguments.
        color[] = {1,1,1,1}; // Icon and text color
        colorIconText[] = {1,1,1,1};
        duration = 5; // How many seconds will the notification be displayed
        priority = 0; // Priority; higher number = more important; tasks in queue are selected by priority
        difficulty[] = {}; // Required difficulty settings. All listed difficulties has to be enabled
    };
    class ML_Info
    {
        title = "%1";
        iconPicture = "%2";
        iconText = "";
        description = "%3";
        duration = 3;
        colorIconText[] = {1,1,1,1};
        color[] = {1,1,1,1};
        priority = 1;
        difficulty[] = {};
    };
};