.class Lcom/android/sec_settings/EasyModeSettings$2;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/EasyModeSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/EasyModeSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/EasyModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/sec_settings/EasyModeSettings$2;->this$0:Lcom/android/sec_settings/EasyModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/sec_settings/EasyModeSettings$2;->this$0:Lcom/android/sec_settings/EasyModeSettings;

    iget-object v1, v1, Lcom/android/sec_settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "easymode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string v1, "easymode_from"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/android/sec_settings/EasyModeSettings$2;->this$0:Lcom/android/sec_settings/EasyModeSettings;

    invoke-virtual {v1}, Lcom/android/sec_settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 0_0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method
