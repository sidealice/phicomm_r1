.class Lcom/phicomm/speaker/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SplashActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SplashActivity$1;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity$1;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SplashActivity;->a(Lcom/phicomm/speaker/activity/SplashActivity;)V

    return-void
.end method
