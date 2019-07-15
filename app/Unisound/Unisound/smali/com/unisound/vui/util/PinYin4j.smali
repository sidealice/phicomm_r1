.class public Lcom/unisound/vui/util/PinYin4j;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static converterToSpell(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "chines"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    new-instance v5, La/a/a/a/b;

    invoke-direct {v5}, La/a/a/a/b;-><init>()V

    sget-object v0, La/a/a/a/a;->b:La/a/a/a/a;

    invoke-virtual {v5, v0}, La/a/a/a/b;->a(La/a/a/a/a;)V

    sget-object v0, La/a/a/a/c;->b:La/a/a/a/c;

    invoke-virtual {v5, v0}, La/a/a/a/b;->a(La/a/a/a/c;)V

    move v0, v1

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    aget-char v2, v4, v0

    const/16 v6, 0x80

    if-le v2, v6, :cond_2

    :try_start_0
    aget-char v2, v4, v0

    invoke-static {v2, v5}, La/a/a/c;->a(CLa/a/a/a/b;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move v2, v1

    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_1

    aget-object v7, v6, v2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_0

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch La/a/a/a/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, La/a/a/a/a/a;->printStackTrace()V

    :cond_1
    :goto_2
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-char v2, v4, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/PinYin4j;->discountTheChinese(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/PinYin4j;->parseTheChineseByObject(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static discountTheChinese(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "theStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v0, v5, v1

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v3, v2

    :goto_1
    if-ge v3, v9, :cond_1

    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    invoke-interface {v7, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private static parseTheChineseByObject(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v4, v5

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_2
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    move-object v0, v2

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-string v0, ""

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_5
    move-object v1, v0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_7
    return-object v1

    :cond_8
    move-object v0, v3

    goto :goto_2
.end method
