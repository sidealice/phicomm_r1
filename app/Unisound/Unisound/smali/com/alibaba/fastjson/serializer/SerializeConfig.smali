.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Lcom/alibaba/fastjson/util/IdentityHashMap;
.source "SerializeConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/IdentityHashMap",
        "<",
        "Ljava/lang/reflect/Type;",
        "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
        ">;"
    }
.end annotation


# static fields
.field private static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# instance fields
.field private typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "tableSize"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    .line 47
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 72
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    const-class v0, [B

    sget-object v1, Lcom/alibaba/fastjson/serializer/ByteArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ByteArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    const-class v0, [S

    sget-object v1, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ShortArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    const-class v0, [I

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/IntArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    const-class v0, [J

    sget-object v1, Lcom/alibaba/fastjson/serializer/LongArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/LongArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    const-class v0, [F

    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/FloatArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    const-class v0, [D

    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    const-class v0, [Z

    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/BooleanArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    const-class v0, [C

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/CharArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ObjectArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ClassSerializer;->instance:Lcom/alibaba/fastjson/serializer/ClassSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    const-class v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/alibaba/fastjson/serializer/DateFormatSerializer;->instance:Lcom/alibaba/fastjson/serializer/DateFormatSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcom/alibaba/fastjson/serializer/LocaleCodec;->instance:Lcom/alibaba/fastjson/serializer/LocaleCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    const-class v0, Ljava/util/Currency;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CurrencyCodec;->instance:Lcom/alibaba/fastjson/serializer/CurrencyCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    const-class v0, Ljava/util/TimeZone;

    sget-object v1, Lcom/alibaba/fastjson/serializer/TimeZoneCodec;->instance:Lcom/alibaba/fastjson/serializer/TimeZoneCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcom/alibaba/fastjson/serializer/UUIDCodec;->instance:Lcom/alibaba/fastjson/serializer/UUIDCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    const-class v0, Ljava/net/Inet4Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    const-class v0, Ljava/net/Inet6Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    const-class v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    const-class v0, Ljava/net/URI;

    sget-object v1, Lcom/alibaba/fastjson/serializer/URICodec;->instance:Lcom/alibaba/fastjson/serializer/URICodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    const-class v0, Ljava/net/URL;

    sget-object v1, Lcom/alibaba/fastjson/serializer/URLCodec;->instance:Lcom/alibaba/fastjson/serializer/URLCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    const-class v0, Ljava/util/regex/Pattern;

    sget-object v1, Lcom/alibaba/fastjson/serializer/PatternCodec;->instance:Lcom/alibaba/fastjson/serializer/PatternCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    const-class v0, Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharsetCodec;->instance:Lcom/alibaba/fastjson/serializer/CharsetCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public static final getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method


# virtual methods
.method public createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeKey"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 55
    return-void
.end method
