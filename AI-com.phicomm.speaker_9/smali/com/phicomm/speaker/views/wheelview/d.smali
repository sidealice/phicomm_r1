.class final Lcom/phicomm/speaker/views/wheelview/d;
.super Ljava/lang/Object;
.source "OnItemSelectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/phicomm/speaker/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/wheelview/WheelView;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/d;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/d;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->c:Lcom/phicomm/speaker/views/wheelview/b/a;

    iget-object v1, p0, Lcom/phicomm/speaker/views/wheelview/d;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/views/wheelview/b/a;->a(I)V

    return-void
.end method
