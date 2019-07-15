.class public Lorg/xutils/db/converter/SqlDateColumnConverter;
.super Ljava/lang/Object;
.source "SqlDateColumnConverter.java"

# interfaces
.implements Lorg/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/db/converter/ColumnConverter",
        "<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lorg/xutils/db/converter/SqlDateColumnConverter;->fieldValue2DbValue(Ljava/sql/Date;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldValue2DbValue(Ljava/sql/Date;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldValue"    # Ljava/sql/Date;

    .prologue
    .line 20
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/xutils/db/converter/SqlDateColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/sql/Date;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/sql/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0
.end method
