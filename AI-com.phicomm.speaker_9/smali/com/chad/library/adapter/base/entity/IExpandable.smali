.class public interface abstract Lcom/chad/library/adapter/base/entity/IExpandable;
.super Ljava/lang/Object;
.source "IExpandable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getLevel()I
.end method

.method public abstract getSubItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract setExpanded(Z)V
.end method
