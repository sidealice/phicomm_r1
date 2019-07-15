.class Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
.super Ljava/lang/Object;
.source "OpEntry.java"


# static fields
.field static final KEY_KEY:Ljava/lang/String; = "key_key"

.field static final KEY_OP_TYPE:Ljava/lang/String; = "key_op_type"

.field static final KEY_VALUE:Ljava/lang/String; = "key_value"

.field static final KEY_VALUE_TYPE:Ljava/lang/String; = "key_value_type"

.field static final OP_TYPE_APPLY:I = 0x6

.field static final OP_TYPE_CLEAR:I = 0x3

.field static final OP_TYPE_COMMIT:I = 0x5

.field static final OP_TYPE_GET:I = 0x1

.field static final OP_TYPE_PUT:I = 0x2

.field static final OP_TYPE_REMOVE:I = 0x4

.field static final VALUE_TYPE_BOOLEAN:I = 0x5

.field static final VALUE_TYPE_FLOAT:I = 0x4

.field static final VALUE_TYPE_INT:I = 0x2

.field static final VALUE_TYPE_LONG:I = 0x3

.field static final VALUE_TYPE_STRING:I = 0x1

.field static final VALUE_TYPE_STRING_SET:I = 0x6


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    .line 55
    return-void
.end method

.method static obtainClear()Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setOpType(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    return-object v0
.end method

.method static obtainGetOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setKey(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setOpType(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    return-object v0
.end method

.method static obtainPutOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setKey(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setOpType(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    return-object v0
.end method

.method static obtainRemoveOperation(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setKey(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->setOpType(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBooleanValue(Z)Z
    .locals 2
    .param p1, "defValue"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 2
    .param p1, "defValue"    # F

    .prologue
    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getIntValue(I)I
    .locals 2
    .param p1, "defValue"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue(J)J
    .locals 3
    .param p1, "defValue"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpType()I
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_op_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStringSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v2, "key_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()I
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setBooleanValue(Z)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-object p0
.end method

.method public setFloatValue(F)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 121
    return-object p0
.end method

.method public setIntValue(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object p0
.end method

.method public setLongValue(J)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    return-object p0
.end method

.method public setOpType(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 2
    .param p1, "opType"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_op_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    return-object p0
.end method

.method public setStringSettingsValue(Ljava/util/Set;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/phicomm/speaker/player/util/multipreference/OpEntry;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    iget-object v1, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v2, "key_value"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 148
    return-object p0

    .line 147
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-object p0
.end method

.method public setValueType(I)Lcom/phicomm/speaker/player/util/multipreference/OpEntry;
    .locals 2
    .param p1, "valueType"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/player/util/multipreference/OpEntry;->bundle:Landroid/os/Bundle;

    const-string v1, "key_value_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    return-object p0
.end method
