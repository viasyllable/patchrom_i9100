.class Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
.super Landroid/database/ContentObserver;
.source "QuickLaunchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarksObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;


# direct methods
.method public constructor <init>(Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;->this$0:Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;

    .line 360
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 361
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;->this$0:Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;

    #calls: Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V
    invoke-static {v0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->access$000(Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;)V

    .line 368
    return-void
.end method
