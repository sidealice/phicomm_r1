.class public Lcom/baidu/location/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/a$a;,
        Lcom/baidu/location/a/a$b;
    }
.end annotation


# static fields
.field private static d:Lcom/baidu/location/a/a;


# instance fields
.field public a:Z

.field b:Z

.field c:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/location/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/baidu/location/c;

.field private h:Lcom/baidu/location/c;

.field private i:Lcom/baidu/location/c;

.field private j:Lcom/baidu/location/c;

.field private k:Z

.field private l:Z

.field private m:Lcom/baidu/location/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/a;->d:Lcom/baidu/location/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->f:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->a:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->b:Z

    iput-object v1, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    iput-object v1, p0, Lcom/baidu/location/a/a;->h:Lcom/baidu/location/c;

    iput-object v1, p0, Lcom/baidu/location/a/a;->i:Lcom/baidu/location/c;

    iput v0, p0, Lcom/baidu/location/a/a;->c:I

    iput-object v1, p0, Lcom/baidu/location/a/a;->j:Lcom/baidu/location/c;

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->k:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->l:Z

    iput-object v1, p0, Lcom/baidu/location/a/a;->m:Lcom/baidu/location/a/a$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/os/Messenger;)Lcom/baidu/location/a/a$a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/a$a;

    iget-object v3, v0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/baidu/location/a/a;
    .locals 1

    sget-object v0, Lcom/baidu/location/a/a;->d:Lcom/baidu/location/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/a;

    invoke-direct {v0}, Lcom/baidu/location/a/a;-><init>()V

    sput-object v0, Lcom/baidu/location/a/a;->d:Lcom/baidu/location/a/a;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/a;->d:Lcom/baidu/location/a/a;

    return-object v0
.end method

.method private a(Lcom/baidu/location/a/a$a;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/baidu/location/a/a$a;->a(Lcom/baidu/location/a/a$a;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xd

    invoke-static {p1, v0}, Lcom/baidu/location/a/a$a;->a(Lcom/baidu/location/a/a$a;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/a/a;->l:Z

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.location.flp.log"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.baidu.baidulocationdemo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pack"

    sget-object v2, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tag"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private e()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/a/a;->f()V

    invoke-virtual {p0}, Lcom/baidu/location/a/a;->d()V

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/a$a;

    iget-object v5, v0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v5, v5, Lcom/baidu/location/h;->c:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    iget-object v0, v0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    sput-boolean v1, Lcom/baidu/location/d/j;->a:Z

    iget-boolean v0, p0, Lcom/baidu/location/a/a;->f:Z

    if-eq v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/baidu/location/a/a;->f:Z

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/a/a;->f:Z

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/d;->a(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/a$a;

    invoke-static {v0, p2, p1}, Lcom/baidu/location/a/a$a;->a(Lcom/baidu/location/a/a$a;ILandroid/os/Bundle;)V

    iget v0, v0, Lcom/baidu/location/a/a$a;->d:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->a:Z

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->b()V

    new-instance v0, Lcom/baidu/location/a/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/a/a$a;-><init>(Lcom/baidu/location/a/a;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/a/a$a;)V

    invoke-direct {p0}, Lcom/baidu/location/a/a;->e()V

    iget-boolean v0, p0, Lcom/baidu/location/a/a;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/baidu/location/a/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/a;->c:I

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/location/a/a;->b(Lcom/baidu/location/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, p1}, Lcom/baidu/location/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/a;->c(Lcom/baidu/location/c;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    invoke-direct {p0}, Lcom/baidu/location/a/a;->e()V

    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->c()V

    invoke-direct {p0}, Lcom/baidu/location/a/a;->e()V

    iget-boolean v0, p0, Lcom/baidu/location/a/a;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/baidu/location/a/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/a;->c:I

    :cond_1
    return-void
.end method

.method public b(Lcom/baidu/location/c;)V
    .locals 13

    const/16 v12, 0xa1

    const/4 v11, 0x4

    const/4 v10, 0x0

    sget-boolean v9, Lcom/baidu/location/a/k;->h:Z

    if-eqz v9, :cond_0

    sput-boolean v10, Lcom/baidu/location/a/k;->h:Z

    :cond_0
    sget v0, Lcom/baidu/location/d/j;->V:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v0

    if-eq v0, v12, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    new-array v8, v0, [F

    iget-object v0, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    invoke-virtual {v0}, Lcom/baidu/location/c;->d()D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    invoke-virtual {v2}, Lcom/baidu/location/c;->e()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/location/c;->d()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/c;->e()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    sget v1, Lcom/baidu/location/d/j;->X:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    if-nez v9, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, p1}, Lcom/baidu/location/c;-><init>(Lcom/baidu/location/c;)V

    iput-object v0, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    :cond_4
    :goto_1
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v0

    if-ne v0, v12, :cond_8

    invoke-static {}, Lcom/baidu/location/a/j;->a()Lcom/baidu/location/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/j;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/a/a;->h:Lcom/baidu/location/c;

    if-nez v0, :cond_5

    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0}, Lcom/baidu/location/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/a;->h:Lcom/baidu/location/c;

    iget-object v0, p0, Lcom/baidu/location/a/a;->h:Lcom/baidu/location/c;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(I)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/a$a;

    iget-object v2, p0, Lcom/baidu/location/a/a;->h:Lcom/baidu/location/c;

    invoke-virtual {v0, v2}, Lcom/baidu/location/a/a$a;->a(Lcom/baidu/location/c;)V

    iget v0, v0, Lcom/baidu/location/a/a$a;->d:I

    if-le v0, v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, p1}, Lcom/baidu/location/c;-><init>(Lcom/baidu/location/c;)V

    iput-object v0, p0, Lcom/baidu/location/a/a;->g:Lcom/baidu/location/c;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/a$a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a$a;->a(Lcom/baidu/location/c;)V

    iget v0, v0, Lcom/baidu/location/a/a$a;->d:I

    if-le v0, v11, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/d/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/a$a;

    iget-object v2, v0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v2, v2, Lcom/baidu/location/h;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v2, v2, Lcom/baidu/location/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, v0, Lcom/baidu/location/a/a$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/baidu/location/a/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/baidu/location/c;)V
    .locals 3

    invoke-static {}, Lcom/baidu/location/a/k;->c()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/c;)Lcom/baidu/location/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/a/k;->c()Lcom/baidu/location/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/a/k;->c()Lcom/baidu/location/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/a/k;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/baidu/location/c;->a(Lcom/baidu/location/a;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/baidu/location/c;->g(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Lcom/baidu/location/c;->a(Ljava/util/List;)V

    :cond_2
    invoke-static {}, Lcom/baidu/location/a/k;->c()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/k;->c(Lcom/baidu/location/c;)V

    invoke-virtual {p0, p1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/c;)V

    return-void
.end method

.method public c(Landroid/os/Message;)Z
    .locals 9

    const/16 v8, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v2}, Lcom/baidu/location/a/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a/a$a;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v3, v3, Lcom/baidu/location/h;->d:I

    iget-object v4, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "scanSpan"

    iget-object v7, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v7, v7, Lcom/baidu/location/h;->d:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/baidu/location/h;->d:I

    iget-object v4, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v4, v4, Lcom/baidu/location/h;->d:I

    if-ge v4, v8, :cond_5

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/a/m;->c()V

    iput-boolean v1, p0, Lcom/baidu/location/a/a;->a:Z

    :goto_1
    iget-object v4, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v4, v4, Lcom/baidu/location/h;->d:I

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_8

    if-ge v3, v8, :cond_8

    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v1, v1, Lcom/baidu/location/h;->n:Z

    if-nez v1, :cond_1

    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v1, v1, Lcom/baidu/location/h;->s:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v3, v3, Lcom/baidu/location/h;->n:Z

    invoke-virtual {v1, v3}, Lcom/baidu/location/a/m;->a(Z)V

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/m;->b()V

    :cond_2
    iget-boolean v1, p0, Lcom/baidu/location/a/a;->b:Z

    iget-object v3, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v3, v3, Lcom/baidu/location/h;->s:Z

    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/baidu/location/a/a;->b:Z

    :goto_2
    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "openGPS"

    iget-object v5, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v5, v5, Lcom/baidu/location/h;->c:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/h;->c:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "coorType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    if-eqz v1, :cond_6

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_3
    iput-object v1, v3, Lcom/baidu/location/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "addrType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    if-eqz v1, :cond_7

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_4
    iput-object v1, v3, Lcom/baidu/location/h;->b:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    iget-object v3, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v3, v3, Lcom/baidu/location/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/baidu/location/a/k;->c()Lcom/baidu/location/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/k;->i()V

    :cond_3
    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timeOut"

    iget-object v5, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v5, v5, Lcom/baidu/location/h;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/h;->e:I

    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "location_change_notify"

    iget-object v5, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v5, v5, Lcom/baidu/location/h;->h:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/h;->h:Z

    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "priority"

    iget-object v2, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v2, v2, Lcom/baidu/location/h;->g:I

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/h;->g:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "wifitimeout"

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/baidu/location/d/j;->ae:I

    if-ge v1, v2, :cond_4

    sput v1, Lcom/baidu/location/d/j;->ae:I

    :cond_4
    invoke-direct {p0}, Lcom/baidu/location/a/a;->e()V

    move v1, v0

    goto/16 :goto_0

    :cond_5
    iput-boolean v0, p0, Lcom/baidu/location/a/a;->a:Z

    goto/16 :goto_1

    :cond_6
    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    iget-object v1, v2, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->b:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method public d(Landroid/os/Message;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/a/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v0, v0, Lcom/baidu/location/h;->g:I

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/a$a;

    invoke-virtual {v0}, Lcom/baidu/location/a/a$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Message;)I
    .locals 3

    const/16 v0, 0x3e8

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/a/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v0, v0, Lcom/baidu/location/h;->d:I

    goto :goto_0
.end method
