.class public Lorg/xutils/db/sqlite/WhereBuilder;
.super Ljava/lang/Object;
.source "WhereBuilder.java"


# instance fields
.field private final whereItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    .line 39
    return-void
.end method

.method private appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 22
    .param p1, "conj"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 137
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    const-string v19, "\""

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v19, "!="

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 150
    const-string p3, "<>"

    .line 156
    :cond_2
    :goto_0
    if-nez p4, :cond_6

    .line 157
    const-string v19, "="

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 158
    const-string v19, " IS NULL"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void

    .line 151
    :cond_3
    const-string v19, "=="

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 152
    const-string p3, "="

    goto :goto_0

    .line 159
    :cond_4
    const-string v19, "<>"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 160
    const-string v19, " IS NOT NULL"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 162
    :cond_5
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " NULL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :cond_6
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v19, "IN"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 168
    const/4 v12, 0x0

    .line 169
    .local v12, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v12, p4

    .line 170
    check-cast v12, Ljava/lang/Iterable;

    .line 179
    :cond_7
    :goto_2
    if-eqz v12, :cond_d

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v19, "("

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .local v9, "inSb":Ljava/lang/StringBuilder;
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 182
    .local v10, "item":Ljava/lang/Object;
    invoke-static {v10}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 183
    .local v11, "itemColValue":Ljava/lang/Object;
    sget-object v20, Lorg/xutils/db/sqlite/ColumnDbType;->TEXT:Lorg/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 184
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 185
    .local v18, "valueStr":Ljava/lang/String;
    const/16 v20, 0x27

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 186
    const-string v20, "\'"

    const-string v21, "\'\'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 188
    :cond_8
    const-string v20, "\'"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .end local v18    # "valueStr":Ljava/lang/String;
    :goto_4
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 171
    .end local v9    # "inSb":Ljava/lang/StringBuilder;
    .end local v10    # "item":Ljava/lang/Object;
    .end local v11    # "itemColValue":Ljava/lang/Object;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 172
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 173
    .local v14, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v3, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v14, :cond_a

    .line 175
    move-object/from16 v0, p4

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 177
    :cond_a
    move-object v12, v3

    goto/16 :goto_2

    .line 190
    .end local v3    # "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "i":I
    .end local v14    # "len":I
    .restart local v9    # "inSb":Ljava/lang/StringBuilder;
    .restart local v10    # "item":Ljava/lang/Object;
    .restart local v11    # "itemColValue":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 194
    .end local v10    # "item":Ljava/lang/Object;
    .end local v11    # "itemColValue":Ljava/lang/Object;
    :cond_c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v19, ")"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 198
    .end local v9    # "inSb":Ljava/lang/StringBuilder;
    :cond_d
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "value must be an Array or an Iterable."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 200
    .end local v12    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_e
    const-string v19, "BETWEEN"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 201
    const/4 v12, 0x0

    .line 202
    .restart local v12    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v12, p4

    .line 203
    check-cast v12, Ljava/lang/Iterable;

    .line 212
    :cond_f
    :goto_6
    if-eqz v12, :cond_17

    .line 213
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 214
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_12

    .line 215
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "value must have tow items."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 204
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_10
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 205
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 206
    .restart local v14    # "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .restart local v3    # "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    if-ge v8, v14, :cond_11

    .line 208
    move-object/from16 v0, p4

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 210
    :cond_11
    move-object v12, v3

    goto :goto_6

    .line 216
    .end local v3    # "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "i":I
    .end local v14    # "len":I
    .restart local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_12
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 217
    .local v15, "start":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_13

    .line 218
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "value must have tow items."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 219
    :cond_13
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 221
    .local v5, "end":Ljava/lang/Object;
    invoke-static {v15}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 222
    .local v16, "startColValue":Ljava/lang/Object;
    invoke-static {v5}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 224
    .local v6, "endColValue":Ljava/lang/Object;
    sget-object v19, Lorg/xutils/db/sqlite/ColumnDbType;->TEXT:Lorg/xutils/db/sqlite/ColumnDbType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 225
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 226
    .local v17, "startStr":Ljava/lang/String;
    const/16 v19, 0x27

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    .line 227
    const-string v19, "\'"

    const-string v20, "\'\'"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 229
    :cond_14
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "endStr":Ljava/lang/String;
    const/16 v19, 0x27

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    .line 231
    const-string v19, "\'"

    const-string v20, "\'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 233
    :cond_15
    const-string v19, "\'"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v19, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v19, "\'"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 237
    .end local v7    # "endStr":Ljava/lang/String;
    .end local v17    # "startStr":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    const-string v19, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 242
    .end local v5    # "end":Ljava/lang/Object;
    .end local v6    # "endColValue":Ljava/lang/Object;
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v15    # "start":Ljava/lang/Object;
    .end local v16    # "startColValue":Ljava/lang/Object;
    :cond_17
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "value must be an Array or an Iterable."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 245
    .end local v12    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_18
    invoke-static/range {p4 .. p4}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 246
    sget-object v19, Lorg/xutils/db/sqlite/ColumnDbType;->TEXT:Lorg/xutils/db/sqlite/ColumnDbType;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 247
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 248
    .restart local v18    # "valueStr":Ljava/lang/String;
    const/16 v19, 0x27

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    .line 249
    const-string v19, "\'"

    const-string v20, "\'\'"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 251
    :cond_19
    const-string v19, "\'"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 253
    .end local v18    # "valueStr":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public static b()Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lorg/xutils/db/sqlite/WhereBuilder;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 2
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 59
    new-instance v0, Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lorg/xutils/db/sqlite/WhereBuilder;-><init>()V

    .line 60
    .local v0, "result":Lorg/xutils/db/sqlite/WhereBuilder;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-object p0

    .line 73
    :cond_0
    const-string v0, "AND"

    goto :goto_0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 3
    .param p1, "where"    # Lorg/xutils/db/sqlite/WhereBuilder;

    .prologue
    .line 84
    iget-object v1, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, " "

    .line 85
    .local v0, "condition":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0    # "condition":Ljava/lang/String;
    :cond_0
    const-string v0, "AND "

    goto :goto_0
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 3
    .param p1, "expr"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public getWhereItemSize()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-object p0

    .line 97
    :cond_0
    const-string v0, "OR"

    goto :goto_0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 3
    .param p1, "where"    # Lorg/xutils/db/sqlite/WhereBuilder;

    .prologue
    .line 108
    iget-object v1, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, " "

    .line 109
    .local v0, "condition":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    return-object v1

    .line 108
    .end local v0    # "condition":Ljava/lang/String;
    :cond_0
    const-string v0, "OR "

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const-string v2, ""

    .line 130
    :goto_0
    return-object v2

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 130
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
