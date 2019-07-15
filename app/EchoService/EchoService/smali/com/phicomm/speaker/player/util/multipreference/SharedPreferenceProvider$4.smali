.class Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$4;
.super Ljava/lang/Object;
.source "SharedPreferenceProvider.java"

# interfaces
.implements Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$MethodProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$4;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private editValue(Landroid/content/SharedPreferences$Editor;Landroid/os/Bundle;)Landroid/content/SharedPreferences$Editor;
    .locals 6
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "opBundle"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const-string v3, "key_key"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "key":Ljava/lang/String;
    const-string v3, "key_value_type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, "valueType":I
    packed-switch v2, :pswitch_data_0

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown valueType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :pswitch_0
    const-string v3, "key_value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 220
    :goto_0
    return-object v3

    .line 204
    :pswitch_1
    const-string v3, "key_value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    goto :goto_0

    .line 207
    :pswitch_2
    const-string v3, "key_value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    goto :goto_0

    .line 210
    :pswitch_3
    const-string v3, "key_value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    goto :goto_0

    .line 213
    :pswitch_4
    const-string v3, "key_value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    goto :goto_0

    .line 216
    :pswitch_5
    const-string v3, "key_value"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 217
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 218
    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    goto :goto_0

    .line 220
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public process(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 148
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "methodQueryValues, extras is null!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 150
    :cond_0
    iget-object v10, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$4;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;

    invoke-virtual {v10}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 151
    .local v2, "ctx":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 152
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "methodQueryValues, ctx is null!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 154
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v2, p1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 155
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string v10, "key_result"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 156
    .local v7, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v7, :cond_2

    .line 157
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .restart local v7    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_2
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 160
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 161
    .local v5, "opBundler":Landroid/os/Bundle;
    const-string v10, "key_op_type"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 162
    .local v6, "opType":I
    packed-switch v6, :pswitch_data_0

    .line 176
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unkonw op type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 164
    :pswitch_0
    invoke-direct {p0, v3, v5}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$4;->editValue(Landroid/content/SharedPreferences$Editor;Landroid/os/Bundle;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 165
    goto :goto_0

    .line 168
    :pswitch_1
    const-string v10, "key_key"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 169
    goto :goto_0

    .line 172
    :pswitch_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 173
    goto :goto_0

    .line 181
    .end local v5    # "opBundler":Landroid/os/Bundle;
    .end local v6    # "opType":I
    :cond_3
    const-string v10, "key_op_type"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "applyOrCommit":I
    const/4 v10, 0x6

    if-ne v0, v10, :cond_4

    .line 183
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    const/4 v1, 0x0

    .line 189
    :goto_1
    return-object v1

    .line 185
    :cond_4
    const/4 v10, 0x5

    if-ne v0, v10, :cond_5

    .line 186
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v9

    .line 187
    .local v9, "res":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v10, "key_result"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 191
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v9    # "res":Z
    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown applyOrCommit:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 162
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
