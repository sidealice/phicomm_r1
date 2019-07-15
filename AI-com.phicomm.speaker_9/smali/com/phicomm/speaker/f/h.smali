.class public Lcom/phicomm/speaker/f/h;
.super Ljava/lang/Object;
.source "EditTextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/f/h$a;
    }
.end annotation


# direct methods
.method public static a()Landroid/text/InputFilter;
    .locals 1

    .line 172
    new-instance v0, Lcom/phicomm/speaker/f/h$3;

    invoke-direct {v0}, Lcom/phicomm/speaker/f/h$3;-><init>()V

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Landroid/text/InputFilter;
    .locals 1

    .line 91
    new-instance v0, Lcom/phicomm/speaker/f/h$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/f/h$1;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static a(ZZ)Landroid/text/InputFilter;
    .locals 1

    .line 148
    new-instance v0, Lcom/phicomm/speaker/f/h$2;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/f/h$2;-><init>(ZZ)V

    return-object v0
.end method

.method public static a(ILandroid/widget/EditText;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 48
    array-length v3, v1

    add-int/2addr v3, v2

    new-array v2, v3, [Landroid/text/InputFilter;

    .line 49
    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    array-length v0, v1

    invoke-static {p0, p2}, Lcom/phicomm/speaker/f/h;->a(ILjava/lang/String;)Landroid/text/InputFilter;

    move-result-object p0

    aput-object p0, v2, v0

    .line 51
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    new-array v1, v2, [Landroid/text/InputFilter;

    .line 44
    invoke-static {p0, p2}, Lcom/phicomm/speaker/f/h;->a(ILjava/lang/String;)Landroid/text/InputFilter;

    move-result-object p0

    aput-object p0, v1, v0

    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_1
    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 4

    if-eqz p0, :cond_2

    .line 191
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 192
    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    array-length v3, v0

    add-int/2addr v3, v1

    new-array v1, v3, [Landroid/text/InputFilter;

    .line 196
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    array-length v0, v0

    invoke-static {}, Lcom/phicomm/speaker/f/h;->a()Landroid/text/InputFilter;

    move-result-object v2

    aput-object v2, v1, v0

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    new-array v0, v1, [Landroid/text/InputFilter;

    invoke-static {}, Lcom/phicomm/speaker/f/h;->a()Landroid/text/InputFilter;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Landroid/widget/EditText;ZZ)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 219
    array-length v3, v0

    add-int/2addr v3, v1

    new-array v1, v3, [Landroid/text/InputFilter;

    .line 220
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    array-length v0, v0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/h;->a(ZZ)Landroid/text/InputFilter;

    move-result-object p1

    aput-object p1, v1, v0

    .line 222
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    .line 214
    :cond_2
    :goto_0
    new-array v0, v1, [Landroid/text/InputFilter;

    .line 215
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/h;->a(ZZ)Landroid/text/InputFilter;

    move-result-object p1

    aput-object p1, v0, v2

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 226
    :goto_1
    new-instance p1, Lcom/phicomm/speaker/f/h$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/f/h$a;-><init>(Lcom/phicomm/speaker/f/h$1;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public static a(C)Z
    .locals 4

    .line 278
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    const-string v1, "EditTextUtils"

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChinese c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " ub = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object p0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, p0, :cond_1

    sget-object p0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, p0, :cond_1

    sget-object p0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, p0, :cond_1

    sget-object p0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 262
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 263
    aget-char v3, v0, v2

    invoke-static {v3}, Lcom/phicomm/speaker/f/h;->a(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
