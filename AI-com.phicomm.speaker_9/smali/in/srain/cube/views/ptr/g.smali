.class public abstract Lin/srain/cube/views/ptr/g;
.super Ljava/lang/Object;
.source "PtrUIHandlerHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-byte v0, p0, Lin/srain/cube/views/ptr/g;->b:B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lin/srain/cube/views/ptr/g;->a:Ljava/lang/Runnable;

    .line 24
    :cond_0
    iget-byte p1, p0, Lin/srain/cube/views/ptr/g;->b:B

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/g;->c()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 26
    iput-byte p1, p0, Lin/srain/cube/views/ptr/g;->b:B

    .line 27
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/g;->run()V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-byte v0, p0, Lin/srain/cube/views/ptr/g;->b:B

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lin/srain/cube/views/ptr/g;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public c()V
    .locals 1

    .line 42
    iget-object v0, p0, Lin/srain/cube/views/ptr/g;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lin/srain/cube/views/ptr/g;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x2

    .line 45
    iput-byte v0, p0, Lin/srain/cube/views/ptr/g;->b:B

    return-void
.end method
