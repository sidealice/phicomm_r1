.class public final Lorg/xutils/db/converter/ColumnConverterFactory;
.super Ljava/lang/Object;
.source "ColumnConverterFactory.java"


# static fields
.field private static final columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/converter/ColumnConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 71
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v0, Lorg/xutils/db/converter/BooleanColumnConverter;

    invoke-direct {v0}, Lorg/xutils/db/converter/BooleanColumnConverter;-><init>()V

    .line 74
    .local v0, "booleanColumnConverter":Lorg/xutils/db/converter/BooleanColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lorg/xutils/db/converter/ByteArrayColumnConverter;

    invoke-direct {v1}, Lorg/xutils/db/converter/ByteArrayColumnConverter;-><init>()V

    .line 78
    .local v1, "byteArrayColumnConverter":Lorg/xutils/db/converter/ByteArrayColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, [B

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Lorg/xutils/db/converter/ByteColumnConverter;

    invoke-direct {v2}, Lorg/xutils/db/converter/ByteColumnConverter;-><init>()V

    .line 81
    .local v2, "byteColumnConverter":Lorg/xutils/db/converter/ByteColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v3, Lorg/xutils/db/converter/CharColumnConverter;

    invoke-direct {v3}, Lorg/xutils/db/converter/CharColumnConverter;-><init>()V

    .line 85
    .local v3, "charColumnConverter":Lorg/xutils/db/converter/CharColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Character;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v4, Lorg/xutils/db/converter/DateColumnConverter;

    invoke-direct {v4}, Lorg/xutils/db/converter/DateColumnConverter;-><init>()V

    .line 89
    .local v4, "dateColumnConverter":Lorg/xutils/db/converter/DateColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/util/Date;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v5, Lorg/xutils/db/converter/DoubleColumnConverter;

    invoke-direct {v5}, Lorg/xutils/db/converter/DoubleColumnConverter;-><init>()V

    .line 92
    .local v5, "doubleColumnConverter":Lorg/xutils/db/converter/DoubleColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v6, Lorg/xutils/db/converter/FloatColumnConverter;

    invoke-direct {v6}, Lorg/xutils/db/converter/FloatColumnConverter;-><init>()V

    .line 96
    .local v6, "floatColumnConverter":Lorg/xutils/db/converter/FloatColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v7, Lorg/xutils/db/converter/IntegerColumnConverter;

    invoke-direct {v7}, Lorg/xutils/db/converter/IntegerColumnConverter;-><init>()V

    .line 100
    .local v7, "integerColumnConverter":Lorg/xutils/db/converter/IntegerColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v8, Lorg/xutils/db/converter/LongColumnConverter;

    invoke-direct {v8}, Lorg/xutils/db/converter/LongColumnConverter;-><init>()V

    .line 104
    .local v8, "longColumnConverter":Lorg/xutils/db/converter/LongColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v9, Lorg/xutils/db/converter/ShortColumnConverter;

    invoke-direct {v9}, Lorg/xutils/db/converter/ShortColumnConverter;-><init>()V

    .line 108
    .local v9, "shortColumnConverter":Lorg/xutils/db/converter/ShortColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/Short;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v10, Lorg/xutils/db/converter/SqlDateColumnConverter;

    invoke-direct {v10}, Lorg/xutils/db/converter/SqlDateColumnConverter;-><init>()V

    .line 112
    .local v10, "sqlDateColumnConverter":Lorg/xutils/db/converter/SqlDateColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/sql/Date;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v11, Lorg/xutils/db/converter/StringColumnConverter;

    invoke-direct {v11}, Lorg/xutils/db/converter/StringColumnConverter;-><init>()V

    .line 115
    .local v11, "stringColumnConverter":Lorg/xutils/db/converter/StringColumnConverter;
    sget-object v12, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;
    .locals 6
    .param p0, "columnType"    # Ljava/lang/Class;

    .prologue
    .line 20
    const/4 v2, 0x0

    .line 21
    .local v2, "result":Lorg/xutils/db/converter/ColumnConverter;
    sget-object v3, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    sget-object v3, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lorg/xutils/db/converter/ColumnConverter;
    check-cast v2, Lorg/xutils/db/converter/ColumnConverter;

    .line 35
    .restart local v2    # "result":Lorg/xutils/db/converter/ColumnConverter;
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 36
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database Column Not Support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", please impl ColumnConverter or use ColumnConverterFactory#registerColumnConverter(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_1
    const-class v3, Lorg/xutils/db/converter/ColumnConverter;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/converter/ColumnConverter;

    .line 26
    .local v0, "columnConverter":Lorg/xutils/db/converter/ColumnConverter;
    if-eqz v0, :cond_2

    .line 27
    sget-object v3, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_2
    move-object v2, v0

    goto :goto_0

    .line 30
    .end local v0    # "columnConverter":Lorg/xutils/db/converter/ColumnConverter;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    return-object v2
.end method

.method public static getDbColumnType(Ljava/lang/Class;)Lorg/xutils/db/sqlite/ColumnDbType;
    .locals 2
    .param p0, "columnType"    # Ljava/lang/Class;

    .prologue
    .line 44
    invoke-static {p0}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v0

    .line 45
    .local v0, "converter":Lorg/xutils/db/converter/ColumnConverter;
    invoke-interface {v0}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v1

    return-object v1
.end method

.method public static isSupportColumnConverter(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "columnType"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    sget-object v3, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    const-class v3, Lorg/xutils/db/converter/ColumnConverter;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/converter/ColumnConverter;

    .line 58
    .local v0, "columnConverter":Lorg/xutils/db/converter/ColumnConverter;
    if-eqz v0, :cond_2

    .line 59
    sget-object v3, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_2
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 62
    .end local v0    # "columnConverter":Lorg/xutils/db/converter/ColumnConverter;
    :catch_0
    move-exception v1

    :cond_3
    move v1, v2

    .line 65
    goto :goto_0
.end method

.method public static registerColumnConverter(Ljava/lang/Class;Lorg/xutils/db/converter/ColumnConverter;)V
    .locals 2
    .param p0, "columnType"    # Ljava/lang/Class;
    .param p1, "columnConverter"    # Lorg/xutils/db/converter/ColumnConverter;

    .prologue
    .line 49
    sget-object v0, Lorg/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
