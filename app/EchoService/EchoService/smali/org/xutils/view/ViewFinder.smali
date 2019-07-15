.class final Lorg/xutils/view/ViewFinder;
.super Ljava/lang/Object;
.source "ViewFinder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/xutils/view/ViewFinder;->view:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xutils/view/ViewFinder;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/view/ViewFinder;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewById(II)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .param p2, "pid"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "pView":Landroid/view/View;
    if-lez p2, :cond_0

    .line 37
    invoke-virtual {p0, p2}, Lorg/xutils/view/ViewFinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lorg/xutils/view/ViewFinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public findViewByInfo(Lorg/xutils/view/ViewInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lorg/xutils/view/ViewInfo;

    .prologue
    .line 31
    iget v0, p1, Lorg/xutils/view/ViewInfo;->value:I

    iget v1, p1, Lorg/xutils/view/ViewInfo;->parentId:I

    invoke-virtual {p0, v0, v1}, Lorg/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
