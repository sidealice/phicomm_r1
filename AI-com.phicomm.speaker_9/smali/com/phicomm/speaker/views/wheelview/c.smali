.class final Lcom/phicomm/speaker/views/wheelview/c;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# instance fields
.field final a:Lcom/phicomm/speaker/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/wheelview/WheelView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/c;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/c;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->c()V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/c;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    sget-object v0, Lcom/phicomm/speaker/views/wheelview/WheelView$Action;->FLING:Lcom/phicomm/speaker/views/wheelview/WheelView$Action;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(Lcom/phicomm/speaker/views/wheelview/WheelView$Action;)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/c;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->invalidate()V

    :goto_0
    return-void
.end method
