.class Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$2;
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
    .line 76
    iput-object p1, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$2;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 79
    if-nez p2, :cond_0

    .line 80
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "methodQueryValues, extras is null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 82
    :cond_0
    iget-object v8, p0, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider$2;->this$0:Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;

    invoke-virtual {v8}, Lcom/phicomm/speaker/player/util/multipreference/SharedPreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 84
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "methodQueryValues, ctx is null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_1
    const-string v8, "key_key"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "key":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 88
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v8, "key_value_type"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 89
    .local v6, "valueType":I
    packed-switch v6, :pswitch_data_0

    .line 121
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown valueType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 91
    :pswitch_0
    const-string v7, "key_value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 92
    .local v4, "value":Z
    const-string v7, "key_value"

    invoke-virtual {p2, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    .end local v4    # "value":Z
    :goto_0
    return-object p2

    .line 96
    :pswitch_1
    const-string v7, "key_value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 97
    .local v4, "value":F
    const-string v7, "key_value"

    invoke-virtual {p2, v7, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 101
    .end local v4    # "value":F
    :pswitch_2
    const-string v7, "key_value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 102
    .local v4, "value":I
    const-string v7, "key_value"

    invoke-virtual {p2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 106
    .end local v4    # "value":I
    :pswitch_3
    const-string v7, "key_value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-interface {v2, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 107
    .local v4, "value":J
    const-string v7, "key_value"

    invoke-virtual {p2, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 111
    .end local v4    # "value":J
    :pswitch_4
    const-string v7, "key_value"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "value":Ljava/lang/String;
    const-string v7, "key_value"

    invoke-virtual {p2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_5
    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 117
    .local v3, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "key_value"

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 89
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
