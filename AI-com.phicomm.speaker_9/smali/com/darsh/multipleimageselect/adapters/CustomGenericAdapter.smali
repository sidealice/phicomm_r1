.class public abstract Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomGenericAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected layoutInflater:Landroid/view/LayoutInflater;

.field protected size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->arrayList:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->context:Landroid/content/Context;

    .line 22
    iget-object p1, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public releaseResources()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->arrayList:Ljava/util/ArrayList;

    .line 45
    iput-object v0, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public setLayoutParams(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;->size:I

    return-void
.end method
