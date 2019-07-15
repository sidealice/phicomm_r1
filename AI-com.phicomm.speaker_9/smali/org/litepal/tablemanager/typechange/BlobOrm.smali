.class public Lorg/litepal/tablemanager/typechange/BlobOrm;
.super Lorg/litepal/tablemanager/typechange/OrmChange;
.source "BlobOrm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/litepal/tablemanager/typechange/OrmChange;-><init>()V

    return-void
.end method


# virtual methods
.method public object2Relation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "[B"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "blob"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
