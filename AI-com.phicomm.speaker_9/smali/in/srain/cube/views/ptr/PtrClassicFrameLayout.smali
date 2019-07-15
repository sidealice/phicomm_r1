.class public Lin/srain/cube/views/ptr/PtrClassicFrameLayout;
.super Lin/srain/cube/views/ptr/PtrFrameLayout;
.source "PtrClassicFrameLayout.java"


# instance fields
.field private d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

.field private e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 27
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    .line 28
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a(Lin/srain/cube/views/ptr/e;)V

    .line 30
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    .line 31
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setFooterView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a(Lin/srain/cube/views/ptr/e;)V

    return-void
.end method


# virtual methods
.method public getHeader()Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;
    .locals 1

    .line 36
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    return-object v0
.end method

.method public setLastUpdateTimeFooterKey(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->setLastUpdateTimeKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeFooterRelateObject(Ljava/lang/Object;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->e:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeHeaderKey(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeHeaderRelateObject(Ljava/lang/Object;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setLastUpdateTimeHeaderKey(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setLastUpdateTimeFooterKey(Ljava/lang/String;)V

    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setLastUpdateTimeHeaderRelateObject(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setLastUpdateTimeFooterRelateObject(Ljava/lang/Object;)V

    return-void
.end method
