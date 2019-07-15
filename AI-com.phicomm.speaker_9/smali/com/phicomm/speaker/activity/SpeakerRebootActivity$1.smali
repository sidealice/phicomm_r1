.class Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;
.super Ljava/lang/Object;
.source "SpeakerRebootActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SpeakerRebootActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerRebootActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerRebootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerRebootActivity;

    const-string v1, "REBOOT_SUCCEED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerRebootActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->a(Lcom/phicomm/speaker/activity/SpeakerRebootActivity;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerRebootActivity;

    const-string v0, "REBOOT_FAILED"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerRebootActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->a(Lcom/phicomm/speaker/activity/SpeakerRebootActivity;Z)V

    return-void
.end method
