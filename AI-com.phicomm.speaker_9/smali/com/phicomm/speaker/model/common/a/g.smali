.class public Lcom/phicomm/speaker/model/common/a/g;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/model/common/a/g;->a:Landroid/util/SparseArray;

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/model/common/a/g;->d:Landroid/view/View;

    .line 31
    iget-object p1, p0, Lcom/phicomm/speaker/model/common/a/g;->d:Landroid/view/View;

    const v0, 0x7f090224

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/model/common/a/g;-><init>(Landroid/view/View;)V

    .line 36
    iput p2, p0, Lcom/phicomm/speaker/model/common/a/g;->c:I

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;ILcom/phicomm/speaker/model/common/a/h;)Lcom/phicomm/speaker/model/common/a/g;
    .locals 2

    .line 41
    invoke-interface {p3, p2}, Lcom/phicomm/speaker/model/common/a/h;->getItemViewType(I)I

    move-result v0

    if-eqz p0, :cond_0

    const v1, 0x7f090224

    .line 43
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/model/common/a/g;

    if-eqz p0, :cond_0

    .line 44
    iget v1, p0, Lcom/phicomm/speaker/model/common/a/g;->c:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 48
    invoke-interface {p3, p0, p2}, Lcom/phicomm/speaker/model/common/a/h;->a(Lcom/phicomm/speaker/model/common/a/g;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 49
    :cond_1
    invoke-interface {p3, v0}, Lcom/phicomm/speaker/model/common/a/h;->b(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    .line 51
    invoke-interface {p3, v0}, Lcom/phicomm/speaker/model/common/a/h;->a(I)I

    move-result p0

    if-lez p0, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "must offer view or view id for view type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_3
    :goto_1
    new-instance p1, Lcom/phicomm/speaker/model/common/a/g;

    invoke-direct {p1, p0, v0}, Lcom/phicomm/speaker/model/common/a/g;-><init>(Landroid/view/View;I)V

    move-object p0, p1

    .line 60
    :cond_4
    iput p2, p0, Lcom/phicomm/speaker/model/common/a/g;->b:I

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/model/common/a/g;->d:Landroid/view/View;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/model/common/a/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/model/common/a/g;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/phicomm/speaker/model/common/a/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b(I)Landroid/widget/TextView;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/common/a/g;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public c(I)Landroid/widget/ImageView;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/common/a/g;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method
