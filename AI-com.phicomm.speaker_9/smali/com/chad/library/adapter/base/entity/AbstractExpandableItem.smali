.class public abstract Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;
.super Ljava/lang/Object;
.source "AbstractExpandableItem.java"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/IExpandable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/entity/IExpandable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mExpandable:Z

.field protected mSubItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mExpandable:Z

    return-void
.end method


# virtual methods
.method public addSubItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->addSubItem(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addSubItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSubItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->hasSubItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubItemPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getSubItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    return-object v0
.end method

.method public hasSubItem()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mExpandable:Z

    return v0
.end method

.method public removeSubItem(I)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeSubItem(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mExpandable:Z

    return-void
.end method

.method public setSubItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/chad/library/adapter/base/entity/AbstractExpandableItem;->mSubItems:Ljava/util/List;

    return-void
.end method
