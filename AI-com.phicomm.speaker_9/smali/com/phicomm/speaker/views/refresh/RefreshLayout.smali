.class public Lcom/phicomm/speaker/views/refresh/RefreshLayout;
.super Lin/srain/cube/views/ptr/PtrFrameLayout;
.source "RefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;,
        Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;
    }
.end annotation


# instance fields
.field private d:Z

.field private e:Z

.field private f:Lcom/phicomm/speaker/views/refresh/PhiHeader;

.field private g:Lcom/phicomm/speaker/views/refresh/PhiHeader;

.field private h:Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;

.field private i:Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e:Z

    .line 34
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->k()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->i:Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->h:Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e:Z

    return p0
.end method

.method private getHeaer()Lcom/phicomm/speaker/views/refresh/PhiHeader;
    .locals 4

    .line 101
    new-instance v0, Lcom/phicomm/speaker/views/refresh/PhiHeader;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/views/refresh/PhiHeader;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private k()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setResistance(F)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setRatioOfHeaderHeightToRefresh(F)V

    const/16 v0, 0x320

    .line 61
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setDurationToClose(I)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullToRefresh(Z)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setKeepHeaderWhenRefresh(Z)V

    .line 67
    new-instance v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;-><init>(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPtrHandler(Lin/srain/cube/views/ptr/c;)V

    .line 92
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->getHeaer()Lcom/phicomm/speaker/views/refresh/PhiHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->f:Lcom/phicomm/speaker/views/refresh/PhiHeader;

    .line 93
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->getHeaer()Lcom/phicomm/speaker/views/refresh/PhiHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->g:Lcom/phicomm/speaker/views/refresh/PhiHeader;

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->f:Lcom/phicomm/speaker/views/refresh/PhiHeader;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setHeaderView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->f:Lcom/phicomm/speaker/views/refresh/PhiHeader;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->a(Lin/srain/cube/views/ptr/e;)V

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->g:Lcom/phicomm/speaker/views/refresh/PhiHeader;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setFooterView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->g:Lcom/phicomm/speaker/views/refresh/PhiHeader;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->a(Lin/srain/cube/views/ptr/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 118
    new-instance v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout$2;-><init>(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setCanPullDownRefresh(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e:Z

    return-void
.end method

.method public setCanPullUpRefresh(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d:Z

    return-void
.end method

.method public setPullDownRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->h:Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 161
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    :cond_0
    return-void
.end method

.method public setPullUpRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->i:Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    :cond_0
    return-void
.end method
