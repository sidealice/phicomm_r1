.class public Lcom/phicomm/speaker/adapter/d;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "IntroductionAdapter.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/Introduction;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/bean/IntroductionBean;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/IntroductionBean;->getIntroduction_list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/d;->a:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/IntroductionBean;->getTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 35
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lcom/phicomm/speaker/adapter/d;->c:I

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/phicomm/speaker/adapter/c/b;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/Introduction;

    iget v0, p0, Lcom/phicomm/speaker/adapter/d;->c:I

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/adapter/c/b;->a(Lcom/phicomm/speaker/bean/Introduction;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 2

    .line 42
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/d;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00e4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/phicomm/speaker/adapter/c/b;

    new-instance v0, Lcom/phicomm/speaker/adapter/d$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/adapter/d$1;-><init>(Lcom/phicomm/speaker/adapter/d;)V

    invoke-direct {p2, p1, v0}, Lcom/phicomm/speaker/adapter/c/b;-><init>(Landroid/view/View;Lcom/phicomm/speaker/adapter/c/b$a;)V

    return-object p2
.end method
