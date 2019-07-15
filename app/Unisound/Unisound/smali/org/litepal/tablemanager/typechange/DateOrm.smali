.class public Lorg/litepal/tablemanager/typechange/DateOrm;
.super Lorg/litepal/tablemanager/typechange/OrmChange;
.source "DateOrm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/litepal/tablemanager/typechange/OrmChange;-><init>()V

    return-void
.end method


# virtual methods
.method public object2Relation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldType"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    const-string v0, "java.util.Date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "integer"

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
