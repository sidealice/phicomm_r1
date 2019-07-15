.class final synthetic Lcom/phicomm/speaker/activity/yanry/confignet/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/e;->a:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/e;->a:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->f()V

    return-void
.end method
