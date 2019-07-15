.class public interface abstract Lorg/xutils/DbManager$TableCreateListener;
.super Ljava/lang/Object;
.source "DbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/DbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TableCreateListener"
.end annotation


# virtual methods
.method public abstract onTableCreated(Lorg/xutils/DbManager;Lorg/xutils/db/table/TableEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;)V"
        }
    .end annotation
.end method
