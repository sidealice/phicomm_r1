.class public Lorg/xutils/db/converter/ByteArrayColumnConverter;
.super Ljava/lang/Object;
.source "ByteArrayColumnConverter.java"

# interfaces
.implements Lorg/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/db/converter/ColumnConverter<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/xutils/db/converter/ByteArrayColumnConverter;->fieldValue2DbValue([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fieldValue2DbValue([B)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 25
    sget-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->BLOB:Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/xutils/db/converter/ByteArrayColumnConverter;->getFieldValue(Landroid/database/Cursor;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getFieldValue(Landroid/database/Cursor;I)[B
    .locals 1

    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method
