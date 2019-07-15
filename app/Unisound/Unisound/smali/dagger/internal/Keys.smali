.class public final Ldagger/internal/Keys;
.super Ljava/lang/Object;
.source "Keys.java"


# static fields
.field private static final IS_QUALIFIER_ANNOTATION:Ldagger/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Memoizer",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAZY_PREFIX:Ljava/lang/String;

.field private static final MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

.field private static final PROVIDER_PREFIX:Ljava/lang/String;

.field private static final SET_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljavax/inject/Provider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ldagger/MembersInjector;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ldagger/Lazy;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldagger/internal/Keys;->SET_PREFIX:Ljava/lang/String;

    .line 49
    new-instance v0, Ldagger/internal/Keys$1;

    invoke-direct {v0}, Ldagger/internal/Keys$1;-><init>()V

    sput-object v0, Ldagger/internal/Keys;->IS_QUALIFIER_ANNOTATION:Ldagger/internal/Memoizer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 262
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Byte;

    .line 271
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 263
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 264
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 265
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 266
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 267
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 268
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 269
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 270
    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Void;

    goto :goto_0
.end method

.method private static extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "delegatePrefix"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;
    .locals 8
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p1, "subject"    # Ljava/lang/Object;

    .prologue
    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "qualifier":Ljava/lang/annotation/Annotation;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 123
    .local v0, "a":Ljava/lang/annotation/Annotation;
    sget-object v5, Ldagger/internal/Keys;->IS_QUALIFIER_ANNOTATION:Ldagger/internal/Memoizer;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ldagger/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    if-eqz v4, :cond_1

    .line 127
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many qualifier annotations on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_1
    move-object v4, v0

    goto :goto_1

    .line 131
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_2
    return-object v4
.end method

.method public static get(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 72
    invoke-static {p0}, Ldagger/internal/Keys;->boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 73
    if-nez p1, :cond_0

    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 76
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "result":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p2, "subject"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-static {p1, p2}, Ldagger/internal/Keys;->extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/internal/Keys;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getBuiltInBindingsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p0}, Ldagger/internal/Keys;->startOfType(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "start":I
    sget-object v1, Ldagger/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldagger/internal/Keys;->PROVIDER_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldagger/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    .line 184
    :cond_0
    sget-object v1, Ldagger/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const-string v1, "members/"

    sget-object v2, Ldagger/internal/Keys;->MEMBERS_INJECTOR_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldagger/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "start":I
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "members/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 251
    :cond_1
    const/16 v1, 0x3c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getLazyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p0}, Ldagger/internal/Keys;->startOfType(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "start":I
    sget-object v1, Ldagger/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ldagger/internal/Keys;->substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldagger/internal/Keys;->LAZY_PREFIX:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Ldagger/internal/Keys;->extractKey(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMembersKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "members/"

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSetKey(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p2, "subject"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-static {p1, p2}, Ldagger/internal/Keys;->extractQualifier([Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 93
    .local v0, "qualifier":Ljava/lang/annotation/Annotation;
    invoke-static {p0}, Ldagger/internal/Keys;->boxIfPrimitive(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, "result":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    sget-object v2, Ldagger/internal/Keys;->SET_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 100
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isAnnotated(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPlatformType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "java."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startOfType(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static substringStartsWith(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "substring"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V
    .locals 8
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "topLevel"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_3

    move-object v1, p0

    .line 141
    check-cast v1, Ljava/lang/Class;

    .line 142
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p1, v6}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 144
    const-string v5, "[]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 145
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    if-eqz p2, :cond_1

    .line 147
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninjectable type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_6

    move-object v4, p0

    .line 154
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 155
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, p1, v7}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 156
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 157
    .local v0, "arguments":[Ljava/lang/reflect/Type;
    const-string v5, "<"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_5

    .line 159
    if-eqz v3, :cond_4

    .line 160
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_4
    aget-object v5, v0, v3

    invoke-static {v5, p1, v7}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    :cond_5
    const-string v5, ">"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    .end local v0    # "arguments":[Ljava/lang/reflect/Type;
    .end local v3    # "i":I
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_6
    instance-of v5, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_7

    move-object v2, p0

    .line 166
    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    .line 167
    .local v2, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5, p1, v6}, Ldagger/internal/Keys;->typeToString(Ljava/lang/reflect/Type;Ljava/lang/StringBuilder;Z)V

    .line 168
    const-string v5, "[]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    .end local v2    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_7
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninjectable type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
