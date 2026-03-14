.class public final Lorg/apache/poi/util/OOXMLLite;
.super Ljava/lang/Object;
.source "OOXMLLite.java"


# instance fields
.field private _destDest:Ljava/io/File;

.field private _ooxmlJar:Ljava/io/File;

.field private _testDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "test"    # Ljava/lang/String;
    .param p3, "ooxmlJar"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/util/OOXMLLite;->_testDir:Ljava/io/File;

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/util/OOXMLLite;->_ooxmlJar:Ljava/io/File;

    .line 76
    return-void
.end method

.method private static checkForTestAnnotation(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 186
    .local p0, "testclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 187
    .local v4, "m":Ljava/lang/reflect/Method;
    const-class v5, Lorg/junit/Test;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    return v3

    .line 186
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 195
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    const-class v5, Lorg/junit/Test;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    return v3

    .line 194
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not derive from TestCase and does not have a @Test annotation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method private static collectTests(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .param p1, "arg"    # Ljava/io/File;
    .param p3, "ptrn"    # Ljava/lang/String;
    .param p4, "exclude"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 219
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 221
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 222
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 223
    .local v4, "f":Ljava/io/File;
    invoke-static {p0, v4, p2, p3, p4}, Lorg/apache/poi/util/OOXMLLite;->collectTests(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    goto/16 :goto_1

    .line 227
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 231
    :cond_2
    invoke-virtual {v2, p4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 233
    :cond_3
    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 234
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inner class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not included"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    return-void

    .line 238
    :cond_4
    const-string v3, ".class"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 241
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 242
    .local v3, "testclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljunit/framework/TestCase;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Lorg/apache/poi/util/OOXMLLite;->checkForTestAnnotation(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 244
    :cond_5
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v3    # "testclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    goto :goto_1

    .line 246
    :catchall_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in classpath"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "srcStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 302
    .local v0, "destDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create destination directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v1, "destStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 310
    nop

    .line 311
    return-void

    .line 309
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method private static getLoadedClasses(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "ptrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 262
    new-instance v0, Lorg/apache/poi/util/OOXMLLite$1;

    invoke-direct {v0}, Lorg/apache/poi/util/OOXMLLite$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 276
    .local v0, "_classes":Ljava/lang/reflect/Field;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 278
    .local v1, "appLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 279
    .local v2, "classes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 282
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v6

    .line 283
    .local v6, "pd":Ljava/security/ProtectionDomain;
    if-nez v6, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v6}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v7

    .line 285
    .local v7, "cs":Ljava/security/CodeSource;
    if-nez v7, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v7}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v8

    .line 287
    .local v8, "loc":Ljava/net/URL;
    if-nez v8, :cond_2

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "jar":Ljava/lang/String;
    invoke-virtual {v9, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 291
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "pd":Ljava/security/ProtectionDomain;
    .end local v7    # "cs":Ljava/security/CodeSource;
    .end local v8    # "loc":Ljava/net/URL;
    .end local v9    # "jar":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 294
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    return-object v3

    .line 295
    .end local v2    # "classes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Class<*>;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    .local v0, "dest":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "test":Ljava/lang/String;
    const/4 v2, 0x0

    .line 82
    .local v2, "ooxml":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 83
    aget-object v4, p0, v3

    const-string v5, "-dest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    aget-object v0, p0, v3

    goto :goto_1

    .line 84
    :cond_0
    aget-object v4, p0, v3

    const-string v5, "-test"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget-object v1, p0, v3

    goto :goto_1

    .line 85
    :cond_1
    aget-object v4, p0, v3

    const-string v5, "-ooxml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p0, v3

    .line 82
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lorg/apache/poi/util/OOXMLLite;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/poi/util/OOXMLLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v3, "builder":Lorg/apache/poi/util/OOXMLLite;
    invoke-virtual {v3}, Lorg/apache/poi/util/OOXMLLite;->build()V

    .line 89
    return-void
.end method


# virtual methods
.method build()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 92
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 94
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "BaseTestXWorkbook"

    aput-object v4, v0, v3

    const-string v3, "BaseTestXSheet"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v4, "BaseTestXRow"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "BaseTestXCell"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "BaseTestXSSFPivotTable"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "TestSXSSFWorkbook\\$\\d"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "TestUnfixedBugs"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "MemoryUsage"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "TestDataProvider"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "TestDataSamples"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "All.+Tests"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "ZipFileAssert"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "AesZipFileZipEntrySource"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "TempFileRecordingSXSSFWorkbookWithCustomZipEntrySource"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "PkiTestUtils"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "TestCellFormatPart\\$\\d"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "TestSignatureInfo\\$\\d"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "TestCertificateEncryption\\$CertData"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "TestPOIXMLDocument\\$OPCParser"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "TestPOIXMLDocument\\$TestFactory"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "TestXSLFTextParagraph\\$DrawTextParagraphProxy"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "TestXSSFExportToXML\\$\\d"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "TestXSSFExportToXML\\$DummyEntityResolver"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "TestFormulaEvaluatorOnXSSF\\$Result"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "TestFormulaEvaluatorOnXSSF\\$SS"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "TestMultiSheetFormulaEvaluatorOnXSSF\\$Result"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "TestMultiSheetFormulaEvaluatorOnXSSF\\$SS"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "TestXSSFBugs\\$\\d"

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-string v4, "AddImageBench"

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const-string v4, "AddImageBench_jmhType_B\\d"

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const-string v4, "AddImageBench_benchCreatePicture_jmhTest"

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const-string v4, "TestEvilUnclosedBRFixingInputStream\\$EvilUnclosedBRFixingInputStream"

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const-string v4, "TempFileRecordingSXSSFWorkbookWithCustomZipEntrySource\\$TempFileRecordingSheetDataWriterWithDecorator"

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const-string v4, "TestXSSFBReader\\$1"

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const-string v4, "TestXSSFBReader\\$TestSheetHandler"

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const-string v4, "TestFormulaEvaluatorOnXSSF\\$1"

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const-string v4, "TestMultiSheetFormulaEvaluatorOnXSSF\\$1"

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const-string v4, "TestZipPackagePropertiesMarshaller\\$1"

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const-string v4, "SLCommonUtils"

    aput-object v4, v0, v3

    const/16 v3, 0x27

    const-string v4, "TestPPTX2PNG\\$1"

    aput-object v4, v0, v3

    const-string/jumbo v3, "|"

    invoke-static {v3, v0}, Lorg/apache/poi/util/StringUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "exclude":Ljava/lang/String;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collecting unit tests from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lorg/apache/poi/util/OOXMLLite;->_testDir:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    iget-object v0, v1, Lorg/apache/poi/util/OOXMLLite;->_testDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".+("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ").class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".+.class$"

    invoke-static {v0, v0, v2, v5, v4}, Lorg/apache/poi/util/OOXMLLite;->collectTests(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " classes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    move-object v4, v0

    .line 142
    .local v4, "jUnitCore":Lorg/junit/runner/JUnitCore;
    new-instance v0, Lorg/junit/internal/TextListener;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v5}, Lorg/junit/internal/TextListener;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v4, v0}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 143
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Lorg/junit/runner/JUnitCore;->run([Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object v5

    .line 144
    .local v5, "result":Lorg/junit/runner/Result;
    invoke-virtual {v5}, Lorg/junit/runner/Result;->wasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying classes to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    iget-object v0, v1, Lorg/apache/poi/util/OOXMLLite;->_ooxmlJar:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/OOXMLLite;->getLoadedClasses(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 151
    .local v6, "classes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 152
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "className":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ".class"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "classRef":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    invoke-direct {v13, v14, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v13, "destFile":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v14, v13}, Lorg/apache/poi/util/OOXMLLite;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 157
    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 159
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v14

    .local v14, "arr$":[Ljava/lang/Class;
    array-length v15, v14

    .local v15, "len$":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .local v10, "i$":I
    :goto_1
    if-ge v10, v15, :cond_0

    aget-object v11, v14, v10

    .line 160
    .local v11, "fc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 161
    move-object/from16 v17, v0

    .end local v0    # "i$":Ljava/util/Iterator;
    .local v17, "i$":Ljava/util/Iterator;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    .end local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "exclude":Ljava/lang/String;
    .end local v4    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .local v16, "exclude":Ljava/lang/String;
    .local v18, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local v19, "jUnitCore":Lorg/junit/runner/JUnitCore;
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    invoke-direct {v0, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/apache/poi/util/OOXMLLite;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 159
    .end local v11    # "fc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    const/16 v11, 0x2f

    goto :goto_1

    .end local v16    # "exclude":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v19    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v3    # "exclude":Ljava/lang/String;
    .restart local v4    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    :cond_0
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "exclude":Ljava/lang/String;
    .end local v4    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .restart local v16    # "exclude":Ljava/lang/String;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v19    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    goto :goto_2

    .line 157
    .end local v10    # "i$":I
    .end local v14    # "arr$":[Ljava/lang/Class;
    .end local v15    # "len$":I
    .end local v16    # "exclude":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v19    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v3    # "exclude":Ljava/lang/String;
    .restart local v4    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    :cond_1
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .line 166
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "exclude":Ljava/lang/String;
    .end local v4    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "classRef":Ljava/lang/String;
    .end local v13    # "destFile":Ljava/io/File;
    .restart local v16    # "exclude":Ljava/lang/String;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v19    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    :goto_2
    move-object/from16 v3, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 151
    .end local v16    # "exclude":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v19    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v3    # "exclude":Ljava/lang/String;
    .restart local v4    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .line 169
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "exclude":Ljava/lang/String;
    .end local v4    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .restart local v16    # "exclude":Ljava/lang/String;
    .restart local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v19    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Copying .xsb resources"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v2, v1, Lorg/apache/poi/util/OOXMLLite;->_ooxmlJar:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 171
    .local v2, "jar":Ljava/util/jar/JarFile;
    const-string v0, "schemaorg_apache_xmlbeans/(system|element)/.*\\.xsb"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 173
    .local v3, "p":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 175
    .local v4, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v7, "destFile":Ljava/io/File;
    invoke-virtual {v2, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/apache/poi/util/OOXMLLite;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v4    # "je":Ljava/util/jar/JarEntry;
    .end local v7    # "destFile":Ljava/io/File;
    :cond_3
    goto :goto_3

    .line 181
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    throw v0

    .line 145
    .end local v6    # "classes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v16    # "exclude":Ljava/lang/String;
    .end local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v19    # "jUnitCore":Lorg/junit/runner/JUnitCore;
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .local v3, "exclude":Ljava/lang/String;
    .local v4, "jUnitCore":Lorg/junit/runner/JUnitCore;
    :cond_5
    move-object/from16 v18, v2

    .end local v2    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v18    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Tests did not succeed, cannot build ooxml-lite jar"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
