.class Lcom/android/sec_settings/RadioInfo$17;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/sec_settings/RadioInfo$17;->this$0:Lcom/android/sec_settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$17;->this$0:Lcom/android/sec_settings/RadioInfo;

    #getter for: Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$1600(Lcom/android/sec_settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$17;->this$0:Lcom/android/sec_settings/RadioInfo;

    #getter for: Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$1600(Lcom/android/sec_settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$17;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$3800(Lcom/android/sec_settings/RadioInfo;)V

    .line 973
    return-void

    .line 971
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
