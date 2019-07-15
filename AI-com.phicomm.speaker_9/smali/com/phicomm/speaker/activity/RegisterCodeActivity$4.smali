.class Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;
.super Ljava/lang/Object;
.source "RegisterCodeActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/views/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/RegisterCodeActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;I)I

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->c(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->g(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->h(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Lcom/phicomm/speaker/views/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->dismiss()V

    return-void
.end method
