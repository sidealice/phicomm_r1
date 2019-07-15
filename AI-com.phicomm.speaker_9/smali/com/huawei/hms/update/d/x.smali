.class public Lcom/huawei/hms/update/d/x;
.super Lcom/huawei/hms/update/a/b;

# interfaces
.implements Lcom/huawei/hms/update/b/a/a;
.implements Lcom/huawei/hms/update/b/a/b;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/huawei/hms/update/d/q;

.field private final c:Lcom/huawei/hms/update/a/a;

.field private d:Lcom/huawei/hms/update/d/a/a;

.field private e:Lcom/huawei/hms/update/d/a/b;

.field private f:Lcom/huawei/hms/update/d/a/a;

.field private g:Lcom/huawei/hms/update/b/a/d;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/update/a/a;)V
    .locals 2

    invoke-direct {p0}, Lcom/huawei/hms/update/a/b;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/huawei/hms/update/d/x;->c:Lcom/huawei/hms/update/a/a;

    new-instance p1, Lcom/huawei/hms/update/d/q;

    iget-object p2, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    new-instance v0, Lcom/huawei/hms/update/b/e;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/update/b/e;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/update/d/q;-><init>(Landroid/content/Context;Lcom/huawei/hms/update/b/a/c;)V

    iput-object p1, p0, Lcom/huawei/hms/update/d/x;->b:Lcom/huawei/hms/update/d/q;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/d/x;)Lcom/huawei/hms/update/d/q;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/update/d/x;->b:Lcom/huawei/hms/update/d/q;

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/update/d/x;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/update/d/x;->b(III)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/huawei/hms/update/d/g;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/update/d/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Lcom/huawei/hms/update/d/a/a;->a(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/d/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/update/d/x;->h:Z

    return p1
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/huawei/hms/update/d/d;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/update/d/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/update/d/x;->d:Lcom/huawei/hms/update/d/a/a;

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->d:Lcom/huawei/hms/update/d/a/a;

    new-instance v1, Lcom/huawei/hms/update/d/y;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/y;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/a;->a(Lcom/huawei/hms/update/d/a/a$a;)Lcom/huawei/hms/update/d/a/a;

    const-string v0, "must be called on ui-thread."

    invoke-static {v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->d:Lcom/huawei/hms/update/d/a/a;

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/a;->b()V

    return-void
.end method

.method private b(III)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->c:Lcom/huawei/hms/update/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/update/a/a;->a(III)V

    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/update/d/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "must be called on ui-thread."

    invoke-static {v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->d:Lcom/huawei/hms/update/d/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->d:Lcom/huawei/hms/update/d/a/a;

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/update/d/x;->d:Lcom/huawei/hms/update/d/a/a;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/huawei/hms/update/d/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/huawei/hms/update/d/l;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/update/d/l;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/huawei/hms/update/d/z;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/z;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/a;->a(Lcom/huawei/hms/update/d/a/a$b;)Lcom/huawei/hms/update/d/a/a;

    new-instance v1, Lcom/huawei/hms/update/d/aa;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/aa;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/a;->a(Lcom/huawei/hms/update/d/a/a$a;)Lcom/huawei/hms/update/d/a/a;

    const-string v1, "must be called on ui-thread."

    invoke-static {v1}, Lcom/huawei/hms/a/a;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/a;->b()V

    return-void
.end method

.method static synthetic d(Lcom/huawei/hms/update/d/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->h()V

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/huawei/hms/update/d/i;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/update/d/i;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/huawei/hms/update/d/ab;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/ab;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/a;->a(Lcom/huawei/hms/update/d/a/a$b;)Lcom/huawei/hms/update/d/a/a;

    new-instance v1, Lcom/huawei/hms/update/d/ac;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/ac;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/a;->a(Lcom/huawei/hms/update/d/a/a$a;)Lcom/huawei/hms/update/d/a/a;

    const-string v1, "must be called on ui-thread."

    invoke-static {v1}, Lcom/huawei/hms/a/a;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/a;->b()V

    return-void
.end method

.method static synthetic e(Lcom/huawei/hms/update/d/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->i()V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/update/d/x;->h:Z

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->g()V

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->b:Lcom/huawei/hms/update/d/q;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->g:Lcom/huawei/hms/update/b/a/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/huawei/hms/update/d/q;->a(Lcom/huawei/hms/update/b/a/d;Ljava/io/File;Lcom/huawei/hms/update/b/a/b;)V

    return-void
.end method

.method private g()V
    .locals 2

    new-instance v0, Lcom/huawei/hms/update/d/o;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/update/d/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    new-instance v1, Lcom/huawei/hms/update/d/ad;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/ad;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/b;->a(Lcom/huawei/hms/update/d/a/a$a;)Lcom/huawei/hms/update/d/a/a;

    const-string v0, "must be called on ui-thread."

    invoke-static {v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/b;->b()V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/b;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    new-instance v0, Lcom/huawei/hms/update/d/a;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/huawei/hms/update/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/update/d/x;->f:Lcom/huawei/hms/update/d/a/a;

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->f:Lcom/huawei/hms/update/d/a/a;

    new-instance v1, Lcom/huawei/hms/update/d/ae;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/ae;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/a;->a(Lcom/huawei/hms/update/d/a/a$b;)Lcom/huawei/hms/update/d/a/a;

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->f:Lcom/huawei/hms/update/d/a/a;

    new-instance v1, Lcom/huawei/hms/update/d/af;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/af;-><init>(Lcom/huawei/hms/update/d/x;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/d/a/a;->a(Lcom/huawei/hms/update/d/a/a$a;)Lcom/huawei/hms/update/d/a/a;

    const-string v0, "must be called on ui-thread."

    invoke-static {v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->f:Lcom/huawei/hms/update/d/a/a;

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/a;->b()V

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->f:Lcom/huawei/hms/update/d/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->f:Lcom/huawei/hms/update/d/a/a;

    invoke-interface {v0}, Lcom/huawei/hms/update/d/a/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/update/d/x;->f:Lcom/huawei/hms/update/d/a/a;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/update/d/x;->c:Lcom/huawei/hms/update/a/a;

    iget-object v1, p0, Lcom/huawei/hms/update/d/x;->b:Lcom/huawei/hms/update/d/q;

    invoke-virtual {v1}, Lcom/huawei/hms/update/d/q;->b()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/hms/update/a/a;->a(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "must be called on ui-thread."

    invoke-static {v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->d()V

    return-void
.end method

.method public a(III)V
    .locals 3

    const-string v0, "UpdateWizardImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onDownloading, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->h()V

    iget-boolean v0, p0, Lcom/huawei/hms/update/d/x;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->j()V

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-direct {p0, p1, v0, v0}, Lcom/huawei/hms/update/d/x;->b(III)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, v0, v0}, Lcom/huawei/hms/update/d/x;->b(III)V

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->e()V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, v0, v0}, Lcom/huawei/hms/update/d/x;->b(III)V

    iget-object p1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    sget p2, Lcom/huawei/hms/sdk/R$string;->hms_download_no_space:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/update/d/x;->b(III)V

    iget-object p1, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/update/d/x;->e:Lcom/huawei/hms/update/d/a/b;

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/update/d/a/b;->a(II)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, v0, v0}, Lcom/huawei/hms/update/d/x;->b(III)V

    iget-object p1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    sget p2, Lcom/huawei/hms/sdk/R$string;->hms_download_failure:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/d/x;->a(Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->k()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILcom/huawei/hms/update/b/a/d;)V
    .locals 3

    const-string v0, "UpdateWizardImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter onCheckResult, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->c()V

    iput-object p2, p0, Lcom/huawei/hms/update/d/x;->g:Lcom/huawei/hms/update/b/a/d;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/16 v0, 0xc8

    invoke-direct {p0, v0, p2, p2}, Lcom/huawei/hms/update/d/x;->b(III)V

    invoke-direct {p0}, Lcom/huawei/hms/update/d/x;->f()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p2}, Lcom/huawei/hms/update/d/x;->b(III)V

    :goto_0
    const/16 p2, 0x67

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    sget p2, Lcom/huawei/hms/sdk/R$string;->hms_check_failure:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/d/x;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/update/d/x;->a:Landroid/app/Activity;

    sget p2, Lcom/huawei/hms/sdk/R$string;->hms_check_no_update:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/d/x;->b(Ljava/lang/String;)V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
