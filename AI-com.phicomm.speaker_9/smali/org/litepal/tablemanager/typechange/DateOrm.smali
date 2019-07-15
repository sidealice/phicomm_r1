.class public Lorg/litepal/tablemanager/typechange/DateOrm;
.super Lorg/litepal/tablemanager/typechange/OrmChange;
.source "DateOrm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/litepal/tablemanager/typechange/OrmChange;-><init>()V

    return-void
.end method


# virtual methods
.method public object2Relation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "java.util.Date"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "integer"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
