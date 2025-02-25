import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class MyBroadcastReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("com.example.MY_ACTION".equals(action)) {
            String url = intent.getStringExtra("url");
            Log.d("MyBroadcastReceiver", "Captured URL: " + url);
        }
    }
}