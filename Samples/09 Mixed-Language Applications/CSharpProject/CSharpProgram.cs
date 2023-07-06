/* Copyright © 2023 Open Text.
 *   
 * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
 * are as may be set forth in the express warranty statements accompanying such products and services. 
 * Nothing herein should be construed as constituting an additional warranty. 
 * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
 * The information contained herein is subject to change without notice.    
 */  

using System;
using CobolBird;

namespace MixedLanguageApplication
{
    class CSharpProgram
    {
        static void Main()
        {
            Console.WriteLine("Entering C# program...");

            Bird bird = new Bird
            {
                CommonName = "European Robin",
                ScientificName = "Erithacus rubecula",
                Length_Min = 12,
                Length_Max = 14,
                Wingspan_Min = 20,
                Wingspan_Max = 22,
                Weight_Min = 14,
                Weight_Max = 21,
                UkBreedingPopulation = 7350000
            };

            CobolProgram cobolProgram = new CobolProgram();
            Console.WriteLine("Leaving C# program...");
            Console.WriteLine("Entering COBOL program...");
            _ = cobolProgram.CobolProgram(bird);
            Console.WriteLine("Leaving COBOL program...");
        }
    }
}
