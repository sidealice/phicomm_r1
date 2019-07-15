.class Lcom/baidu/location/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Messenger;

.field public c:Lcom/baidu/location/h;

.field public d:I

.field final synthetic e:Lcom/baidu/location/a/a;


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/a;Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/a/a$a;->e:Lcom/baidu/location/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    new-instance v0, Lcom/baidu/location/h;

    invoke-direct {v0}, Lcom/baidu/location/h;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iput v1, p0, Lcom/baidu/location/a/a$a;->d:I

    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "packName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/a$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "prodName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/location/h;->f:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v3, v3, Lcom/baidu/location/h;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/location/a/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/baidu/location/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "coorType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/location/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "addrType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "enableSimulateGps"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/h;->j:Z

    sget-boolean v0, Lcom/baidu/location/d/j;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v0, v0, Lcom/baidu/location/h;->j:Z

    if-eqz v0, :cond_b

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/baidu/location/d/j;->l:Z

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v0, v0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "openGPS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/h;->c:Z

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "scanSpan"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/location/h;->d:I

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timeOut"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/location/h;->e:I

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "priority"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/location/h;->g:I

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "location_change_notify"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/h;->h:Z

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "needDirect"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/h;->n:Z

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isneedaltitude"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/baidu/location/h;->s:Z

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "isneedaptag"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/baidu/location/d/j;->h:Z

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "isneedaptagd"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_3
    :goto_2
    sput-boolean v2, Lcom/baidu/location/d/j;->i:Z

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "autoNotifyLocSensitivity"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/baidu/location/d/j;->Q:F

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "wifitimeout"

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/baidu/location/d/j;->ae:I

    if-ge v0, v2, :cond_4

    sput v0, Lcom/baidu/location/d/j;->ae:I

    :cond_4
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "autoNotifyMaxInterval"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/baidu/location/d/j;->V:I

    if-lt v0, v2, :cond_5

    sput v0, Lcom/baidu/location/d/j;->V:I

    :cond_5
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "autoNotifyMinDistance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/baidu/location/d/j;->X:I

    if-lt v0, v2, :cond_6

    sput v0, Lcom/baidu/location/d/j;->X:I

    :cond_6
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "autoNotifyMinTimeInterval"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/baidu/location/d/j;->W:I

    if-lt v0, v1, :cond_7

    sput v0, Lcom/baidu/location/d/j;->W:I

    :cond_7
    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget v0, v0, Lcom/baidu/location/h;->d:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_8

    :cond_8
    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v0, v0, Lcom/baidu/location/h;->n:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v0, v0, Lcom/baidu/location/h;->s:Z

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v1, v1, Lcom/baidu/location/h;->n:Z

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/m;->a(Z)V

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->b()V

    :cond_a
    iget-boolean v0, p1, Lcom/baidu/location/a/a;->b:Z

    iget-object v1, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v1, v1, Lcom/baidu/location/h;->s:Z

    or-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/baidu/location/a/a;->b:Z

    return-void

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    move v2, v1

    goto/16 :goto_2
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/a$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/a/a$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/a$a;->d:I

    goto :goto_0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/a$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/baidu/location/a/a$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/location/a/a$a;->d:I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Lcom/baidu/location/c;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v1, Lcom/baidu/location/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/a$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/a/a$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/a$a;->d:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/a/a$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/a$a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/a$a;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/a/a$a;->a(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/baidu/location/d/j;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lcom/baidu/location/a/a$a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/baidu/location/a/a$a;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/c;)V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/baidu/location/a/a$a;->a(Lcom/baidu/location/c;I)V

    return-void
.end method

.method public a(Lcom/baidu/location/c;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x1

    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, p1}, Lcom/baidu/location/c;-><init>(Lcom/baidu/location/c;)V

    const/16 v1, 0x15

    if-ne p2, v1, :cond_0

    const/16 v1, 0x1b

    const-string v2, "locStr"

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/location/a/a$a;->a(ILjava/lang/String;Lcom/baidu/location/c;)V

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    const-string v2, "gcj02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/c;->e()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/location/c;->d()D

    move-result-wide v4

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_3

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/c;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/c;->g()Ljava/lang/String;

    move-result-object v1

    const-string v6, "gcj02"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/baidu/location/c;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v1

    aget-wide v2, v1, v8

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/c;->b(D)V

    aget-wide v2, v1, v9

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/c;->a(D)V

    iget-object v1, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v1, "locStr"

    invoke-direct {p0, p2, v1, v0}, Lcom/baidu/location/a/a$a;->a(ILjava/lang/String;Lcom/baidu/location/c;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/location/c;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/c;->g()Ljava/lang/String;

    move-result-object v1

    const-string v6, "wgs84"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/a/a$a;->c:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    const-string v6, "bd09ll"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "wgs842mc"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v1

    aget-wide v2, v1, v8

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/c;->b(D)V

    aget-wide v2, v1, v9

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/c;->a(D)V

    const-string v1, "wgs84mc"

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
