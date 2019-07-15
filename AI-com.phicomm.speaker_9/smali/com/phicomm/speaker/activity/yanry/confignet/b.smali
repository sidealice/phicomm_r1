.class final synthetic Lcom/phicomm/speaker/activity/yanry/confignet/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/b;->a:Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/b;->a:Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->g()V

    return-void
.end method
