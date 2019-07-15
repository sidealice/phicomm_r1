.class public Lcom/baidu/location/a/k;
.super Lcom/baidu/location/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/k$1;,
        Lcom/baidu/location/a/k$a;,
        Lcom/baidu/location/a/k$b;
    }
.end annotation


# static fields
.field public static h:Z

.field private static i:Lcom/baidu/location/a/k;


# instance fields
.field private A:D

.field private B:Z

.field private C:J

.field private D:J

.field private E:Lcom/baidu/location/a/k$a;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/baidu/location/a/k$b;

.field private L:Z

.field private M:I

.field private N:J

.field private O:Z

.field final e:I

.field public f:Lcom/baidu/location/a/i$b;

.field public final g:Landroid/os/Handler;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/baidu/location/c;

.field private m:Lcom/baidu/location/c;

.field private n:Lcom/baidu/location/b/f;

.field private o:Lcom/baidu/location/b/a;

.field private p:Lcom/baidu/location/b/f;

.field private q:Lcom/baidu/location/b/a;

.field private r:Z

.field private volatile s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lcom/baidu/location/a;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/i;",
            ">;"
        }
    .end annotation
.end field

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/k;->i:Lcom/baidu/location/a/k;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/a/k;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/baidu/location/a/i;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/location/a/k;->e:I

    iput-boolean v3, p0, Lcom/baidu/location/a/k;->j:Z

    iput-object v1, p0, Lcom/baidu/location/a/k;->f:Lcom/baidu/location/a/i$b;

    iput-object v1, p0, Lcom/baidu/location/a/k;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    iput-object v1, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    iput-object v1, p0, Lcom/baidu/location/a/k;->n:Lcom/baidu/location/b/f;

    iput-object v1, p0, Lcom/baidu/location/a/k;->o:Lcom/baidu/location/b/a;

    iput-object v1, p0, Lcom/baidu/location/a/k;->p:Lcom/baidu/location/b/f;

    iput-object v1, p0, Lcom/baidu/location/a/k;->q:Lcom/baidu/location/b/a;

    iput-boolean v3, p0, Lcom/baidu/location/a/k;->r:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->s:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->t:Z

    iput-wide v4, p0, Lcom/baidu/location/a/k;->u:J

    iput-wide v4, p0, Lcom/baidu/location/a/k;->v:J

    iput-object v1, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    iput-object v1, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->B:Z

    iput-wide v4, p0, Lcom/baidu/location/a/k;->C:J

    iput-wide v4, p0, Lcom/baidu/location/a/k;->D:J

    iput-object v1, p0, Lcom/baidu/location/a/k;->E:Lcom/baidu/location/a/k$a;

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->F:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->G:Z

    iput-boolean v3, p0, Lcom/baidu/location/a/k;->H:Z

    new-instance v0, Lcom/baidu/location/a/i$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/i$a;-><init>(Lcom/baidu/location/a/i;)V

    iput-object v0, p0, Lcom/baidu/location/a/k;->g:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->I:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->J:Z

    iput-object v1, p0, Lcom/baidu/location/a/k;->K:Lcom/baidu/location/a/k$b;

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->L:Z

    iput v2, p0, Lcom/baidu/location/a/k;->M:I

    iput-wide v4, p0, Lcom/baidu/location/a/k;->N:J

    iput-boolean v3, p0, Lcom/baidu/location/a/k;->O:Z

    new-instance v0, Lcom/baidu/location/a/i$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/i$b;-><init>(Lcom/baidu/location/a/i;)V

    iput-object v0, p0, Lcom/baidu/location/a/k;->f:Lcom/baidu/location/a/i$b;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/k;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->h(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->L:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/a/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/k;->L:Z

    return p1
.end method

.method private a(Lcom/baidu/location/b/a;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/b;->f()Lcom/baidu/location/b/a;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    iget-object v2, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    invoke-virtual {p1, v2}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/baidu/location/b/f;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/g;->o()Lcom/baidu/location/b/f;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/b/f;

    iget-object v2, p0, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/b/f;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/b/f;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/b/f;

    invoke-virtual {p1, v2}, Lcom/baidu/location/b/f;->c(Lcom/baidu/location/b/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/location/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/location/a/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/k;->t:Z

    return p1
.end method

.method public static declared-synchronized c()Lcom/baidu/location/a/k;
    .locals 2

    const-class v1, Lcom/baidu/location/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/k;->i:Lcom/baidu/location/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/k;

    invoke-direct {v0}, Lcom/baidu/location/a/k;-><init>()V

    sput-object v0, Lcom/baidu/location/a/k;->i:Lcom/baidu/location/a/k;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/k;->i:Lcom/baidu/location/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isWaitingLocTag"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/baidu/location/a/k;->h:Z

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->d(Landroid/os/Message;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "this type %d is illegal"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->e(Landroid/os/Message;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->g(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/baidu/location/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->F:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/location/a/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/k;->F:Z

    return p1
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->e(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->g(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->b()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/location/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->G:Z

    return v0
.end method

.method private e(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/c;

    invoke-direct {v9, v0}, Lcom/baidu/location/c;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/k;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/k;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/c;->d()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/c;->e()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    invoke-virtual {v9, v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/a;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/c;->g(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/c;->a(Ljava/util/List;)V

    :cond_3
    :goto_0
    iput-object v9, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    iput-object v10, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->B:Z

    invoke-direct {p0, v10}, Lcom/baidu/location/a/k;->g(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private f(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/baidu/location/a/k;->t:Z

    iget-object v0, p0, Lcom/baidu/location/a/k;->K:Lcom/baidu/location/a/k$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a/k$b;-><init>(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$1;)V

    iput-object v0, p0, Lcom/baidu/location/a/k;->K:Lcom/baidu/location/a/k$b;

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/a/k;->L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k;->K:Lcom/baidu/location/a/k$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/k;->K:Lcom/baidu/location/a/k$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/k;->K:Lcom/baidu/location/a/k$b;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/a/k;->L:Z

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->h(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private g(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/k;->M:I

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->r:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/k;->M:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->D:J

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->f(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->h(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->f(Landroid/os/Message;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->D:J

    goto :goto_0
.end method

.method private h(Landroid/os/Message;)V
    .locals 11

    const/16 v6, 0x3e

    const/4 v10, 0x0

    const-wide/16 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/k;->u:J

    sub-long/2addr v2, v4

    iget-boolean v4, p0, Lcom/baidu/location/a/k;->s:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/k;->u:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/k;->u:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    :cond_2
    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    goto :goto_0

    :cond_3
    iput-boolean v9, p0, Lcom/baidu/location/a/k;->s:Z

    iget-object v2, p0, Lcom/baidu/location/a/k;->o:Lcom/baidu/location/b/a;

    invoke-direct {p0, v2}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/b/a;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/baidu/location/a/k;->j:Z

    iget-object v2, p0, Lcom/baidu/location/a/k;->n:Lcom/baidu/location/b/f;

    invoke-direct {p0, v2}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/b/f;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/baidu/location/a/k;->j:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/baidu/location/a/k;->B:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/k;->v:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    iput-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    iput-object v10, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    :cond_4
    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/a/m;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/a/m;->e()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/location/c;->c(F)V

    :cond_5
    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->h()I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/k;->N:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_10

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->h()I

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->h()I

    move-result v2

    const/16 v3, 0xa1

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->h()I

    move-result v2

    if-ne v2, v6, :cond_8

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->u:J

    invoke-virtual {p0, v10}, Lcom/baidu/location/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v8, p0, Lcom/baidu/location/a/k;->J:Z

    if-nez v0, :cond_b

    iput-boolean v9, p0, Lcom/baidu/location/a/k;->J:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/k;->N:J

    invoke-direct {p0}, Lcom/baidu/location/a/k;->j()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/k;->C:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    iput-wide v2, p0, Lcom/baidu/location/a/k;->C:J

    :cond_9
    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/location/a/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    invoke-virtual {v2}, Lcom/baidu/location/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/baidu/location/d/b;->a(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v1, p0, Lcom/baidu/location/a/k;->k:Ljava/lang/String;

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v10, p0, Lcom/baidu/location/a/k;->k:Ljava/lang/String;

    :cond_c
    iget-object v1, p0, Lcom/baidu/location/a/k;->f:Lcom/baidu/location/a/i$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/i$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/a/k;->b:Lcom/baidu/location/b/a;

    iput-object v0, p0, Lcom/baidu/location/a/k;->o:Lcom/baidu/location/b/a;

    iget-object v0, p0, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/b/f;

    iput-object v0, p0, Lcom/baidu/location/a/k;->n:Lcom/baidu/location/b/f;

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->r:Z

    if-ne v0, v9, :cond_d

    iput-boolean v8, p0, Lcom/baidu/location/a/k;->r:Z

    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->e(Landroid/os/Message;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_d

    :cond_d
    iget v0, p0, Lcom/baidu/location/a/k;->M:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/baidu/location/a/k;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->f()Z

    :cond_e
    iput v8, p0, Lcom/baidu/location/a/k;->M:I

    goto/16 :goto_0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/location/a/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method private j()[Ljava/lang/String;
    .locals 11

    const/4 v2, 0x0

    const/16 v10, 0x3e

    const/4 v1, 0x1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v3, v2

    const-string v0, "Location failed beacuse we can not get any loc information!"

    aput-object v0, v3, v1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "&apl="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v1, :cond_0

    const-string v0, "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!"

    aput-object v0, v3, v1

    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/d/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "0|0|"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Location failed beacuse we can not get any loc information without any location permission!"

    aput-object v0, v3, v1

    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v0, v7, :cond_8

    const-string v0, "&loc="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_7

    const-string v0, "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!"

    aput-object v0, v3, v1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_2

    const-string v7, "&lmd="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;)I

    move-result v7

    if-ltz v7, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/location/b/b;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/location/b/g;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/location/d/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne v5, v1, :cond_3

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x7

    const-string v5, "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    return-object v3

    :cond_3
    const-string v1, "0|0|"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x4

    const-string v5, "Location failed beacuse we can not get any loc information without any location permission!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x5

    const-string v5, "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    const-string v0, "&sim=1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "&wifio=1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/4 v1, 0x6

    const-string v5, "Location failed beacuse we can not get any loc information , you can insert a sim card or open wifi and try again!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v0

    const/16 v1, 0x9

    const-string v5, "Location failed beacuse we can not get any loc information!"

    invoke-virtual {v0, v10, v1, v5}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->G:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->H:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->B:Z

    invoke-direct {p0}, Lcom/baidu/location/a/k;->l()V

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->O:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->O:Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/a/u;->a()Lcom/baidu/location/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/u;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/c;)Lcom/baidu/location/a;
    .locals 10

    const/4 v9, 0x0

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/k;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/k;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/c;->d()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/c;->e()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    :goto_0
    return-object v0

    :cond_1
    iput-object v9, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    iput-object v9, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->B:Z

    invoke-direct {p0, v9}, Lcom/baidu/location/a/k;->g(Landroid/os/Message;)V

    :cond_2
    move-object v0, v9

    goto :goto_0
.end method

.method public a()V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/k;->E:Lcom/baidu/location/a/k$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->F:Z

    if-eqz v0, :cond_0

    iput-boolean v10, p0, Lcom/baidu/location/a/k;->F:Z

    iget-object v0, p0, Lcom/baidu/location/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/k;->E:Lcom/baidu/location/a/k$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/c;

    invoke-direct {v9, v0}, Lcom/baidu/location/c;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lcom/baidu/location/a/k;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/k;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/c;->d()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/c;->e()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    invoke-virtual {v9, v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/a;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/c;->g(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/c;->a(Ljava/util/List;)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    :goto_0
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/location/a/k;->G:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/baidu/location/a/k;->j:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    :goto_1
    iput-object v2, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0}, Lcom/baidu/location/c;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(I)V

    iput-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    goto :goto_1
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/a/k;->E:Lcom/baidu/location/a/k$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->F:Z

    iget-object v0, p0, Lcom/baidu/location/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/a/k;->E:Lcom/baidu/location/a/k$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v1

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/baidu/location/a/k;->J:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/c;)V

    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->I:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/a/k;->c(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public b(Lcom/baidu/location/c;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/16 v5, 0xa1

    const/4 v9, 0x0

    new-instance v1, Lcom/baidu/location/c;

    invoke-direct {v1, p1}, Lcom/baidu/location/c;-><init>(Lcom/baidu/location/c;)V

    invoke-virtual {p1}, Lcom/baidu/location/c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/c;->k()Lcom/baidu/location/a;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    invoke-virtual {p1}, Lcom/baidu/location/c;->e()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/k;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/c;->d()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/k;->A:D

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/location/c;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/c;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/c;->e()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/k;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/c;->d()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/k;->A:D

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/c;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/c;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    invoke-virtual {p1}, Lcom/baidu/location/c;->e()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/k;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/c;->d()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/k;->A:D

    :cond_2
    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/d;->i()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v0

    :goto_0
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/baidu/location/c;

    invoke-direct {v10, v0}, Lcom/baidu/location/c;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_6

    :cond_3
    new-array v8, v4, [F

    iget-wide v0, p0, Lcom/baidu/location/a/k;->A:D

    iget-wide v2, p0, Lcom/baidu/location/a/k;->z:D

    invoke-virtual {v10}, Lcom/baidu/location/c;->d()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/baidu/location/c;->e()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/k;->w:Lcom/baidu/location/a;

    invoke-virtual {v10, v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/a;)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/baidu/location/c;->g(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    invoke-virtual {v10, v0}, Lcom/baidu/location/c;->a(Ljava/util/List;)V

    :cond_6
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    :goto_1
    return-void

    :cond_7
    iget-boolean v1, p0, Lcom/baidu/location/a/k;->G:Z

    if-eqz v1, :cond_b

    new-array v8, v4, [F

    iget-object v0, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->d()D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->e()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/location/c;->d()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/c;->e()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    :cond_8
    aget v0, v8, v9

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iput-object p1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->H:Z

    if-nez v0, :cond_9

    iput-boolean v9, p0, Lcom/baidu/location/a/k;->H:Z

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/baidu/location/c;->b()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_9

    iput-object p1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v1

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_f

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v1

    const/16 v2, 0xa7

    const/16 v3, 0x8

    const-string v4, "NetWork location failed because baidu location service can not caculate the location!"

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    :cond_c
    :goto_3
    iput-object v6, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v1

    if-ne v1, v5, :cond_15

    const-string v1, "cl"

    invoke-virtual {p1}, Lcom/baidu/location/c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v1}, Lcom/baidu/location/c;->h()I

    move-result v1

    if-ne v1, v5, :cond_15

    const-string v1, "wf"

    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/k;->v:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-gez v1, :cond_15

    iput-object p1, p0, Lcom/baidu/location/a/k;->m:Lcom/baidu/location/c;

    :goto_4
    if-eqz v0, :cond_12

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    invoke-virtual {v1, v2}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    :goto_5
    invoke-static {p1}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/c;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    :cond_d
    :goto_6
    sget-object v0, Lcom/baidu/location/a/k;->c:Ljava/lang/String;

    const-string v1, "ssid\":\""

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/baidu/location/d/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_14

    iget-object v1, p0, Lcom/baidu/location/a/k;->n:Lcom/baidu/location/b/f;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/location/a/k;->n:Lcom/baidu/location/b/f;

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/f;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/k;->k:Ljava/lang/String;

    :goto_7
    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_e
    invoke-direct {p0}, Lcom/baidu/location/a/k;->k()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v1

    if-ne v1, v5, :cond_c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_16

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/d/j;->b(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_10

    if-ne v1, v4, :cond_16

    :cond_10
    move v1, v0

    :goto_8
    if-eqz v1, :cond_11

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v1

    const-string v2, "NetWork location successful, open gps will be better!"

    invoke-virtual {v1, v5, v0, v2}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p1}, Lcom/baidu/location/c;->f()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    invoke-virtual {p1}, Lcom/baidu/location/c;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/baidu/location/c;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v2, "&wifio=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/baidu/location/a/b;->a()Lcom/baidu/location/a/b;

    move-result-object v1

    const-string v2, "NetWork location successful, open wifi will be better!"

    invoke-virtual {v1, v5, v4, v2}, Lcom/baidu/location/a/b;->a(IILjava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/k;->v:J

    goto/16 :goto_5

    :cond_13
    iput-object v6, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    goto/16 :goto_6

    :cond_14
    iput-object v6, p0, Lcom/baidu/location/a/k;->k:Ljava/lang/String;

    goto :goto_7

    :cond_15
    move v0, v9

    goto/16 :goto_4

    :cond_16
    move v1, v9

    goto :goto_8

    :cond_17
    move v1, v9

    goto/16 :goto_0
.end method

.method public c(Lcom/baidu/location/c;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, p1}, Lcom/baidu/location/c;-><init>(Lcom/baidu/location/c;)V

    iput-object v0, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->I:Z

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->s:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->t:Z

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->G:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->H:Z

    invoke-virtual {p0}, Lcom/baidu/location/a/k;->i()V

    iput-boolean v1, p0, Lcom/baidu/location/a/k;->I:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/k;->x:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/a/k;->y:Ljava/util/List;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a/k;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/k;->h(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/k;->t:Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/k;->l:Lcom/baidu/location/c;

    return-void
.end method
