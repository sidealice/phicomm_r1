.class public Lcom/jph/takephoto/model/TContextWrap;
.super Ljava/lang/Object;
.source "TContextWrap.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jph/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jph/takephoto/model/TContextWrap;->fragment:Landroid/support/v4/app/Fragment;

    .line 25
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static of(Landroid/app/Activity;)Lcom/jph/takephoto/model/TContextWrap;
    .locals 1

    .line 14
    new-instance v0, Lcom/jph/takephoto/model/TContextWrap;

    invoke-direct {v0, p0}, Lcom/jph/takephoto/model/TContextWrap;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Lcom/jph/takephoto/model/TContextWrap;
    .locals 1

    .line 17
    new-instance v0, Lcom/jph/takephoto/model/TContextWrap;

    invoke-direct {v0, p0}, Lcom/jph/takephoto/model/TContextWrap;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/jph/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/jph/takephoto/model/TContextWrap;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/jph/takephoto/model/TContextWrap;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/jph/takephoto/model/TContextWrap;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method
