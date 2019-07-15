.class Lcom/phicomm/speaker/activity/SmartHomeActivity$1;
.super Ljava/lang/Object;
.source "SmartHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SmartHomeActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SmartHomeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SmartHomeActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$1;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$1;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->b(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$1;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a(Lcom/phicomm/speaker/activity/SmartHomeActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$1;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->c(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Lcom/phicomm/speaker/presenter/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/n;->a(Z)V

    return-void
.end method
