.class public final Lcom/baidu/location/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/a/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/g$a;,
        Lcom/baidu/location/g$b;
    }
.end annotation


# instance fields
.field private A:Lcom/baidu/location/a/c;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Landroid/content/ServiceConnection;

.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/location/h;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Messenger;

.field private g:Lcom/baidu/location/g$a;

.field private final h:Landroid/os/Messenger;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/baidu/location/c;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/baidu/location/g$b;

.field private p:Z

.field private final q:Ljava/lang/Object;

.field private r:J

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/Boolean;

.field private y:Ljava/lang/Boolean;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/h;)V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/baidu/location/g;->a:J

    iput-object v2, p0, Lcom/baidu/location/g;->b:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/h;

    invoke-direct {v0}, Lcom/baidu/location/h;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iput-boolean v1, p0, Lcom/baidu/location/g;->d:Z

    iput-object v2, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    iput-boolean v1, p0, Lcom/baidu/location/g;->l:Z

    iput-boolean v1, p0, Lcom/baidu/location/g;->m:Z

    iput-boolean v1, p0, Lcom/baidu/location/g;->n:Z

    iput-object v2, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    iput-boolean v1, p0, Lcom/baidu/location/g;->p:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/g;->q:Ljava/lang/Object;

    iput-wide v4, p0, Lcom/baidu/location/g;->r:J

    iput-wide v4, p0, Lcom/baidu/location/g;->s:J

    iput-object v2, p0, Lcom/baidu/location/g;->t:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/g;->u:Z

    iput-boolean v3, p0, Lcom/baidu/location/g;->v:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g;->w:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g;->x:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g;->y:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/baidu/location/g;->A:Lcom/baidu/location/a/c;

    iput-boolean v1, p0, Lcom/baidu/location/g;->B:Z

    iput-boolean v1, p0, Lcom/baidu/location/g;->C:Z

    iput-boolean v1, p0, Lcom/baidu/location/g;->D:Z

    new-instance v0, Lcom/baidu/location/k;

    invoke-direct {v0, p0}, Lcom/baidu/location/k;-><init>(Lcom/baidu/location/g;)V

    iput-object v0, p0, Lcom/baidu/location/g;->E:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    new-instance v0, Lcom/baidu/location/g$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/g$a;-><init>(Lcom/baidu/location/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/g;->h:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/g;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/g;Lcom/baidu/location/a/c;)Lcom/baidu/location/a/c;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g;->A:Lcom/baidu/location/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/g;Lcom/baidu/location/g$b;)Lcom/baidu/location/g$b;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    const/16 v4, 0x43

    const/16 v3, 0x42

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    iget-object v1, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/g;->l:Z

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/g;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/d;

    iget-object v2, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-interface {v0, v2}, Lcom/baidu/location/d;->a(Lcom/baidu/location/c;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b;

    iget-object v2, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0, v2}, Lcom/baidu/location/b;->onReceiveLocation(Lcom/baidu/location/c;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/g;->s:J

    goto :goto_2
.end method

.method private a(ILandroid/app/Notification;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notification"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "command"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->D:Z

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g;->m:Z

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/h;

    iget-object v1, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    invoke-virtual {v1, v0}, Lcom/baidu/location/h;->a(Lcom/baidu/location/h;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget v1, v1, Lcom/baidu/location/h;->d:I

    iget v2, v0, Lcom/baidu/location/h;->d:I

    if-eq v1, v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/g;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, p0, Lcom/baidu/location/g;->n:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    iget-object v3, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    invoke-virtual {v1, v3}, Lcom/baidu/location/g$a;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/g;->n:Z

    :cond_2
    iget v1, v0, Lcom/baidu/location/h;->d:I

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/baidu/location/g;->n:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    if-nez v1, :cond_3

    new-instance v1, Lcom/baidu/location/g$b;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/baidu/location/g$b;-><init>(Lcom/baidu/location/g;Lcom/baidu/location/k;)V

    iput-object v1, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    iget-object v3, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    iget v4, v0, Lcom/baidu/location/h;->d:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/baidu/location/g$a;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/g;->n:Z

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    new-instance v1, Lcom/baidu/location/h;

    invoke-direct {v1, v0}, Lcom/baidu/location/h;-><init>(Lcom/baidu/location/h;)V

    iput-object v1, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-object v0, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xf

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/baidu/location/g;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/os/Message;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/g;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/baidu/location/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c;

    iput-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    iget-object v0, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/g;->r:J

    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/location/g;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/g;ILandroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/g;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/g;->a(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g;Lcom/baidu/location/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->b(Lcom/baidu/location/c;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "removenotify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "command"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->D:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/g;->d:Z

    return p1
.end method

.method private b(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/d;

    iget-object v1, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Lcom/baidu/location/c;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/g;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/baidu/location/g;->k:Lcom/baidu/location/c;

    iget-boolean v0, p0, Lcom/baidu/location/g;->C:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->B:Z

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/d;

    invoke-interface {v0, p1}, Lcom/baidu/location/d;->a(Lcom/baidu/location/c;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b;

    invoke-virtual {v0, p1}, Lcom/baidu/location/b;->onReceiveLocation(Lcom/baidu/location/c;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/baidu/location/g;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/g;->v:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/location/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/g;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/location/g;)Lcom/baidu/location/g$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/g;->d:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/g;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/location/l;

    invoke-direct {v0, p0}, Lcom/baidu/location/l;-><init>(Lcom/baidu/location/g;)V

    invoke-virtual {v0}, Lcom/baidu/location/l;->start()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g;->y:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bdls_v2.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g;->t:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string v1, "debug_dev"

    iget-boolean v2, p0, Lcom/baidu/location/g;->z:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    if-nez v1, :cond_2

    new-instance v1, Lcom/baidu/location/h;

    invoke-direct {v1}, Lcom/baidu/location/h;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    :cond_2
    const-string v1, "cache_exception"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "kill_process"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/location/g;->E:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v4, p0, Lcom/baidu/location/g;->d:Z

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private c(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/b;

    iget-object v1, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/baidu/location/g;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->e(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/g;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/baidu/location/g;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->h:Landroid/os/Messenger;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/g;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/g;->E:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-boolean v0, p0, Lcom/baidu/location/g;->D:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_2

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/baidu/location/g;->D:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/baidu/location/g;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v0, p0, Lcom/baidu/location/g;->n:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    iget-object v2, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    invoke-virtual {v0, v2}, Lcom/baidu/location/g$a;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g;->n:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-object v4, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    iput-boolean v3, p0, Lcom/baidu/location/g;->m:Z

    iput-boolean v3, p0, Lcom/baidu/location/g;->u:Z

    iput-boolean v3, p0, Lcom/baidu/location/g;->d:Z

    iput-boolean v3, p0, Lcom/baidu/location/g;->B:Z

    iput-boolean v3, p0, Lcom/baidu/location/g;->C:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private d(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/b;

    iget-object v1, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/location/g;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/location/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/g;->C:Z

    return p1
.end method

.method private e()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packName"

    iget-object v2, p0, Lcom/baidu/location/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prodName"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-object v2, v2, Lcom/baidu/location/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "coorType"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-object v2, v2, Lcom/baidu/location/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "addrType"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-object v2, v2, Lcom/baidu/location/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openGPS"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "location_change_notify"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "scanSpan"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget v2, v2, Lcom/baidu/location/h;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "enableSimulateGps"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "timeOut"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget v2, v2, Lcom/baidu/location/h;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget v2, v2, Lcom/baidu/location/h;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "map"

    iget-object v2, p0, Lcom/baidu/location/g;->w:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "import"

    iget-object v2, p0, Lcom/baidu/location/g;->x:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "needDirect"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaptag"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->o:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedpoiregion"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedregular"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaptagd"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaltitude"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v2, v2, Lcom/baidu/location/h;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "autoNotifyMaxInterval"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    invoke-virtual {v2}, Lcom/baidu/location/h;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "autoNotifyMinTimeInterval"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    invoke-virtual {v2}, Lcom/baidu/location/h;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "autoNotifyMinDistance"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    invoke-virtual {v2}, Lcom/baidu/location/h;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "autoNotifyLocSensitivity"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    invoke-virtual {v2}, Lcom/baidu/location/h;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "wifitimeout"

    iget-object v2, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget v2, v2, Lcom/baidu/location/h;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/baidu/location/g;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/g;->e()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/d;

    iget-object v1, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/baidu/location/g;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/location/g;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->a(Z)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/location/g;)Lcom/baidu/location/h;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    return-object v0
.end method

.method private f()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/g;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/g;->m:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/g;->u:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/g;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/g;->m:Z

    if-eqz v0, :cond_4

    :cond_2
    const/16 v0, 0x16

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/g;->m:Z

    if-eqz v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isWaitingLocTag"

    iget-boolean v3, p0, Lcom/baidu/location/g;->m:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/location/g;->m:Z

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/g;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/g;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/g;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/baidu/location/g;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget v0, v0, Lcom/baidu/location/h;->d:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/baidu/location/g;->n:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/baidu/location/g$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/g$b;-><init>(Lcom/baidu/location/g;Lcom/baidu/location/k;)V

    iput-object v0, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    iget-object v2, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    iget-object v3, p0, Lcom/baidu/location/g;->c:Lcom/baidu/location/h;

    iget v3, v3, Lcom/baidu/location/h;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/baidu/location/g$a;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->n:Z

    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic g(Lcom/baidu/location/g;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->y:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/location/g;)Lcom/baidu/location/a/c;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->A:Lcom/baidu/location/a/c;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/location/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/location/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->q:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/location/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/location/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/location/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/g;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/baidu/location/g;)Lcom/baidu/location/g$b;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->o:Lcom/baidu/location/g$b;

    return-object v0
.end method

.method static synthetic o(Lcom/baidu/location/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/g;->c()V

    return-void
.end method

.method static synthetic p(Lcom/baidu/location/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/g;->d()V

    return-void
.end method

.method static synthetic q(Lcom/baidu/location/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/g;->f()V

    return-void
.end method

.method static synthetic r(Lcom/baidu/location/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/g;->C:Z

    return v0
.end method

.method static synthetic s(Lcom/baidu/location/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/g;->B:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g;->v:Z

    iget-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/baidu/location/b;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please set a non-null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    const/16 v1, 0x514

    invoke-virtual {v0, v1}, Lcom/baidu/location/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/baidu/location/c;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/g;->C:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/g;->B:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    const/16 v1, 0x2bd

    invoke-virtual {v0, v1}, Lcom/baidu/location/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->v:Z

    iget-object v0, p0, Lcom/baidu/location/g;->g:Lcom/baidu/location/g$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/g;->A:Lcom/baidu/location/a/c;

    return-void
.end method
