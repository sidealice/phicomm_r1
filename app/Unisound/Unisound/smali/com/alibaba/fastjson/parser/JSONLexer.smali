.class public interface abstract Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final ARRAY:I = 0x2

.field public static final END:I = 0x4

.field public static final EOI:B = 0x1at

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final OBJECT:I = 0x1

.field public static final UNKOWN:I = 0x0

.field public static final VALUE:I = 0x3


# virtual methods
.method public abstract bytesValue()[B
.end method

.method public abstract close()V
.end method

.method public abstract config(Lcom/alibaba/fastjson/parser/Feature;Z)V
.end method

.method public abstract decimalValue(Z)Ljava/lang/Number;
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract floatValue()F
.end method

.method public abstract getBufferPosition()I
.end method

.method public abstract getCurrent()C
.end method

.method public abstract intValue()I
.end method

.method public abstract integerValue()Ljava/lang/Number;
.end method

.method public abstract isBlankInput()Z
.end method

.method public abstract isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
.end method

.method public abstract isRef()Z
.end method

.method public abstract longValue()J
.end method

.method public abstract next()C
.end method

.method public abstract nextToken()V
.end method

.method public abstract nextToken(I)V
.end method

.method public abstract nextTokenWithColon()V
.end method

.method public abstract nextTokenWithColon(I)V
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public abstract pos()I
.end method

.method public abstract resetStringPosition()V
.end method

.method public abstract scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract scanInt(C)I
.end method

.method public abstract scanLong(C)J
.end method

.method public abstract scanNumber()V
.end method

.method public abstract scanString(C)Ljava/lang/String;
.end method

.method public abstract scanString()V
.end method

.method public abstract scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method public abstract scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
.end method

.method public abstract scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method public abstract scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
.end method

.method public abstract skipWhitespace()V
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract token()I
.end method

.method public abstract tokenName()Ljava/lang/String;
.end method
