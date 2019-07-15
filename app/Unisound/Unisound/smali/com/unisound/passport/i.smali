.class public Lcom/unisound/passport/i;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "TimerThreadUtils"


# instance fields
.field private b:I

.field private c:Lcom/unisound/passport/j;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/unisound/passport/j;Landroid/os/Looper;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0xea60

    iput v0, p0, Lcom/unisound/passport/i;->b:I

    iput-boolean v1, p0, Lcom/unisound/passport/i;->d:Z

    iput-boolean v1, p0, Lcom/unisound/passport/i;->e:Z

    iput-object p1, p0, Lcom/unisound/passport/i;->c:Lcom/unisound/passport/j;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unisound/passport/i;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/passport/i;->b:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/passport/i;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/passport/i;->e()V

    iget v0, p0, Lcom/unisound/passport/i;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/unisound/passport/i;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/passport/i;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/passport/i;->e:Z

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/passport/i;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/unisound/passport/i;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/unisound/passport/i;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/unisound/passport/i;->e:Z

    :cond_0
    iput-boolean v1, p0, Lcom/unisound/passport/i;->d:Z

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/passport/i;->d:Z

    iget-boolean v0, p0, Lcom/unisound/passport/i;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/i;->c:Lcom/unisound/passport/j;

    invoke-interface {v0}, Lcom/unisound/passport/j;->a()V

    :cond_0
    return-void
.end method
