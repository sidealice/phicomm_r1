.class final synthetic Lcom/phicomm/speaker/activity/yanry/confignet/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/d;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/d;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    return-void
.end method
